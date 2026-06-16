---
name: 출고데이터업로드_발주자동화
description: 핵심 운영 기능 - 3PL 출고 데이터 업로드와 CX 발주 자동화 시스템
type: project
originSessionId: d59e3bb1-1d7b-4e75-b8fc-3dfa2eb98171
---
## 중요 기능 2가지

### 1. 출고 데이터 업로드 (`/sales/orders`)
**목적**: 3PL 출고 데이터를 엑셀로 업로드하여 판매 데이터에 반영

**컴포넌트**: `ExcelUploadSection.tsx`
- 창고 선택: 드림산업 / 투민글로벌(3PL)
- 엑셀 파일 업로드 (.xlsx, .xls)
- API: `/api/sales/upload`
- 테이블: `daily_sales`, `sales_orders`

**기능**:
- 업로드 통계 표시 (total, orderCount, converted, excluded, skipped, inserted, updated, errors)
- 최근 30일 출고 데이터 조회 및 집계
- 창고별(드림산업, 투민글로벌) 집계

### 2. 발주 자동화 (`/cx/order-automation`)
**목적**: 주문 데이터를 분석하여 제조사/3PL 발주 자동화

**컴포넌트**: `OrderAutomationClient.tsx`
- 세트 분해 로직: `set_composition` 테이블 활용
- 바코드 매핑: `product_barcode_simple_name` 테이블

**핵심 로직**:
- **러그 제품** → 드림산업 발주
  - 미니멀러그: LE10... (LE104 제외)
  - 그레인러그: LE104...
  - 사이잘룩러그: LF...
  - 시어서커: LC...
  - 티가든러그: LEC10000...
- **비러그 제품** → 투민글로벌(3PL) 발주
  - 스와치, 방석, 쿠션 등
- **합배송 처리**: 러그+비러그 동시 주문 시 배송 분리
- **재고 확인**: 재고 부족 시 알림
- **엑셀 다운로드**: ExcelJS로 발주서 생성

**Why**: 이 두 기능은 일일 운영의 핵심 - 출고 데이터 수집과 발주 처리 자동화

**How to apply**: 
- 판매/재고/발주 관련 기능 수정 시 이 두 기능에 영향이 없는지 반드시 확인
- 세트 구성 변경 시 `set_composition` 테이블 업데이트 필요
- 바코드 변경 시 발주 자동화 로직 영향도 검토
