---
name: Supabase 데이터베이스 설정
description: 자료분석 시 자동으로 사용할 Supabase 연결 정보 및 테이블 구조
type: project
originSessionId: 9b23fcd4-2e3e-4782-8abe-d14483ff11f7
---
## Supabase 연결 정보

**URL:** `https://ebktoazswvtqsjrjryqk.supabase.co`

**Key:** `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVia3RvYXpzd3Z0cXNqcmpyeXFrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM5MDM2NzIsImV4cCI6MjA4OTQ3OTY3Mn0.a3kFa8JOBlvZ-PSMWEcIDQKLLPDrXbPf4qTRptWvki8`

## 데이터베이스 테이블

| 테이블명 | 용도 | 주요 컬럼 |
|---------|------|----------|
| `manufacturer_shipment_data` | 제조사(드림산업) 직배 출고 | upload_date, order_number, product_name, quantity |
| `tpl_shipment_data` | 3PL(투민글로벌) 출고 | upload_date, order_code, product_name, quantity |
| `daily_sales` | 일별 판매 데이터 (※ daily_sales_data 아님) | sale_date, product_barcode, quantity |
| `return_exchange_data` | 반품/교환 데이터 | year, month, day, type, category, reason, defect_level, barcode, product_name |
| `cost_data` | 원가 데이터 | product_name, cost_excluding_vat, materials, raw_materials |
| `set_price_data` | 세트 가격 | set_name, price, discount_rate |
| `subsidiary_data` | 단가 마스터 (원자재/부자재) | name, price, main_category, product_category |
| `set_composition` | 세트 구성 (세트 분해 매핑) | set_name, component_type, component_name |
| `product_barcode_simple_name` | 바코드-상품명 매핑 | barcode, simple_name, category |

## 사용 방법

**Why:** 사용자가 데이터 관련 질문 시 수동으로 Supabase 정보를 입력하지 않고, 이 설정을 자동으로 사용하여 즉시 데이터 조회 및 분석 제공

**How to apply:** 
- 판매량, 반품율, 출고 비율 등 데이터 분석 요청 시 자동으로 이 Supabase 연결 정보 사용
- Node.js 스크립트 생성 시 이 URL과 Key 자동 포함
- 작업 디렉토리 `/Users/jooho/Documents/Claude/likethix/likethix-qc`에서 작업

## ⚠️ 조회 시 필수: Pagination

Supabase는 기본 1000건만 반환한다. 전체 데이터가 필요한 분석에서 pagination 없이 조회하면 데이터가 누락되어 결과가 틀린다. 반드시 offset/limit 1000씩 루프. 상세: [[주간 분석 방법]]
