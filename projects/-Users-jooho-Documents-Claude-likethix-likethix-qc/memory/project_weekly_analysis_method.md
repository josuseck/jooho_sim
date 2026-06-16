---
name: 주간 분석 방법
description: 판매/반품/불량 주간 데이터 분석 방법, 주차 기준, Supabase 조회 정확성 원칙
type: project
originSessionId: d708d21d-6924-475d-b19c-0825f17eeb1f
---
## 주차 기준

**한 주차 = 목요일 ~ 수요일**

예시:
- W17: 2026-04-23(목) ~ 2026-04-29(수)
- W18: 2026-04-30(목) ~ 2026-05-06(수)
- W19: 2026-05-07(목) ~ 2026-05-13(수)

**Why:** 회사 주차 집계 기준이 목~수요일

**주차 번호 주의:** 데이터 주차(W19)와 주간회의 호칭(20주차)은 +1 차이. [[project_weekly_meeting_week_offset]] 참조. 사용자가 "이번주차"라고 하면 진행 중 주차가 아니라 **직전 완료 주차**(목~수 끝난 것)를 의미하는 경우가 많으니 날짜 범위를 먼저 확인할 것.

## ⚠️ 데이터 조회 정확성 (절대 원칙)

데이터가 틀리면 신뢰성이 무너진다. 반드시 다음을 지킨다:

### 1. Supabase 1000건 리밋 → Pagination 필수
- Supabase는 기본 1000건만 반환. `.range(0, 9999)` 단독으로도 부족할 수 있음
- **반드시 pagination 루프** (로컬 서버 `app/(data)/sales/product-daily/page.tsx`와 동일 방식):
  ```python
  offset, limit = 0, 1000
  while True:
      resp = q.range(offset, offset+limit-1).execute()
      if not resp.data: break
      all_data.extend(resp.data)
      if len(resp.data) < limit: break
      offset += limit
  ```
- 검증: 동일 스크립트 2회 실행해 레코드 수가 같은지 확인

### 2. 바코드 분류는 config 파일 그대로
- `config/barcode_patterns.json`을 읽어 priority 순서대로 매칭 (직접 if-elif 작성 금지)
- 미니멀러그 = "LE10400, LE10300 제외한 모든 LE" → `not startswith('LE10')`로 짜면 LE10000xxx(미니멀)가 누락됨 (실제 발생한 버그)
- 분석 후 **미분류 건수 0인지 반드시 확인**
- [[project_barcode_patterns]] 참조

### 3. 정확한 테이블명 / 컬럼
- 판매: **`daily_sales`** (daily_sales_data 아님), `sale_date`(date), `product_barcode`, `quantity`
- 반품/교환: **`return_exchange_data`**, `year`/`month`/`day`(분리 컬럼, date 아님), `type`('반품'/'교환'), `reason`, `defect_level`, `category`, `product_name`, `barcode`
- [[project_supabase_config]] 참조

## 계산 지표

- **판매량**: daily_sales `quantity` 합계
- **반품 건수**: type == '반품' 건수
- **교환 건수**: type == '교환' 건수
- **반품율**: 반품 건수 / 판매량 × 100
- **불량 건수**: **`defect_level == '경결함'`** (사용자 확정 기준, 2026-05-15). `reason=='상품불량'`이 아님 — 불량이라 교환한 건도 포함하기 위함
- **불량율**: 경결함 건수 / 판매량 × 100
- 반품 데이터 제품 분류: barcode 우선, 없으면 category/product_name 텍스트 매칭

## 저장 위치
- 분석 리포트: `~/Documents/Claude/자료분석/YYYY-MM-DD_W##_주간분석.md`

## 주의사항

1. 반품/교환은 과거 판매분에 대한 것 → 같은 주차 판매와 1:1 매칭 안 됨 (비율 해석 시 고려)
2. 주말(토·일) 판매·반품 데이터 없음 → 목금 + 월화수 5일치가 정상
3. 누적 데이터 포함: 2026 YTD, Q2(04~06), 월별
4. **Q2 목표**: 반품율 4.5% 이하, 불량율 0.5% 이하
