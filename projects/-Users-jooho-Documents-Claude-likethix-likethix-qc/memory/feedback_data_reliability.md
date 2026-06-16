---
name: feedback_data_reliability
description: 데이터 분석 시 신뢰성 최우선 — 리밋 해제·config 분류·재실행 검증 필수
type: feedback
originSessionId: current
---
데이터 분석 결과는 한 번에 정확해야 한다. 값이 실행할 때마다 바뀌면 신뢰성이 무너진다.

**Why:** 2026-05-15 W19(20주차) 분석에서 Supabase 1000건 리밋과 바코드 분류 오류로 반품율이 0.49%→4.01%로 여러 번 바뀜. 사용자가 "자꾸 값이 틀리면 데이터 신뢰성이 없어진다"고 강하게 지적.

**How to apply:** 판매/반품/불량 등 집계 분석 시 보고 전 반드시:
1. Pagination으로 전체 데이터 조회 (1000건 리밋 해제) — [[주간 분석 방법]]
2. 바코드 분류는 `config/barcode_patterns.json` 그대로, 미분류 0건 확인
3. **스크립트 2회 실행해 레코드 수·수치 동일한지 검증** 후 보고
4. 기존 산출물(노션 등)과 비교 시, 차이가 나면 어느 쪽이 맞는지 원천 데이터로 교차검증
5. 추정·근사치로 보고하지 말 것. 확신 없으면 검증부터.

또한 로컬 서버에 이미 동작하는 집계 로직이 있으면(예: returns/page.tsx의 range, product-daily의 pagination) 그 방식을 그대로 따를 것 — 서버와 분석 결과가 일치해야 함.
