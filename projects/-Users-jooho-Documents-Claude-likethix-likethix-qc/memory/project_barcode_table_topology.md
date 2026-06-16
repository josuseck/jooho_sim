---
name: project_barcode_table_topology
description: 바코드/세트 변경 시 건드려야 할 Supabase 테이블 5개 구조 + FK 의존성 + 올바른 마이그레이션 순서
metadata: 
  node_type: memory
  type: project
  originSessionId: 450394ba-8be4-4850-9119-41b34c800e7c
---

# 바코드/세트 변경 시 테이블 구조 (매우 중요 — 쿠션류 전면수정 등에 필수)

세트 바코드 1개를 바꾸려면 아래 **3개 테이블을 모두 일관되게** 바꿔야 한다. FK 때문에 순서가 중요하다.

## 관련 테이블

| 테이블 | 역할 | 키 컬럼 |
|--------|------|--------|
| `product_sku` | 마스터 SKU (id, barcode, sku_name, product_category, is_set, selling_price, is_active) | `barcode` |
| `set_barcodes` | 세트 등록부 — **업로드 시 세트 검증**(validSetBarcodes) | `set_barcode` |
| `set_composition` (단수) | 세트→구성품 매핑 — **업로드/발주 분해의 실제 활성 테이블** (set_barcode, component_barcode, component_name, quantity) | `set_barcode` |
| `product_barcodes` | 단품 바코드 검증부 (업로드 시 단품 validProductBarcodes) | `barcode` |
| `product_barcode_simple_name` | 발주자동화 표시용 간단명 (barcode, simple_name) | `barcode` |

## FK 의존성 (직접 확인함)
- `set_composition.set_barcode` → **`product_sku.barcode`** (제약명 `fk_set_barcode`). 그래서 set_composition 행을 새 바코드로 바꾸려면 **먼저 product_sku에 새 barcode가 있어야 한다.**
- `set_compositions` (복수, 849행)는 **레거시·코드 미사용** 테이블. set_barcodes를 참조하는 FK(`set_compositions_set_barcode_fkey`)가 있으나 무시 가능.

## 올바른 마이그레이션 순서 (세트 바코드 변경)
1. `product_sku`: 새 바코드 행 insert (기존 행 복사, barcode만 교체)
2. `set_composition`: set_barcode를 새 값으로 UPDATE (1번 덕에 FK 통과)
3. `set_barcodes`: 새 바코드 insert + 구버전 delete (또는 update)
4. `product_sku`: 구버전 barcode delete (2번 후엔 자식 없어 삭제 가능)
- ⚠️ 순서 틀리면 `fk_set_barcode` / FK 위반으로 실패. set_barcodes를 직접 update하면 set_compositions(복수) FK에 막히니 insert+delete로.

## 업로드 세트 분해 로직 (`app/api/sales/upload/route.ts`)
- `isSet = validSetBarcodes.has(sku)` (set_barcodes 기준) → `setCompositionsMap.get(sku)` (set_composition 기준)으로 구성품 분해. 구성품 quantity × 세트수량.
- 발주자동화(`OrderAutomationClient`)도 동일하게 `set_composition.set_barcode`로 setMap 만들어 분해 → 코드 수정 불필요, 데이터만 맞으면 됨.

## 단품도 "세트"다
- 방석/펫쿠션 단품(커버+충전재)처럼 **출고 시 여러 구성품으로 분해되는 것은 전부** set_barcodes+set_composition에 is_set=true로 등록해야 업로드/발주에서 분해됨.
- 구성품(커버·충전재 등)은 `product_barcodes`(업로드 단품검증)와 `product_sku`에 존재해야 하고, 발주표시명은 `product_barcode_simple_name`(barcode, simple_name)에 upsert.

## 출고 이력은 분해되어 저장됨 (삭제 안전)
- 업로드 시 세트는 **업로드 시점에 구성품 바코드로 분해되어** `daily_sales`에 저장됨. 세트 코드 자체는 daily_sales에 없음.
- 따라서 세트 정의(product_sku/set_barcodes/set_composition)를 삭제해도 **과거 출고/판매 이력은 보존됨**. 단, 구버전 코드가 든 옛 출고파일 재업로드는 인식 불가.

## 실제 적용 사례
- 2026-06-10 미니멀러그 세트 30종 `LE102S*` → `LE100B*` (뒤 7자리·구성 동일). 4단계로 product_sku/set_composition/set_barcodes 정리.
- 2026-06-10 쿠션류 전면 재구성: 러그가 비운 `LE102S*`를 **펫쿠션 단품으로 재사용**. 방석단품 MCS010→`LE101S`, 펫쿠션단품 PCS010→`LE102S`, MCSA/PCS0A/PCS0B 구성 변경, 구버전(MCS010/PCS010/MCSB/MCSC/PCS0C 30종) 완전삭제. 신규 구성품 simple_name도 채움. **판매-출고 연결 엑셀(판매코드→출고구성품+수량)이 set_composition 목표 상태와 1:1 대응.**

관련: [[project_barcode_patterns]] [[출고데이터업로드_발주자동화]]
