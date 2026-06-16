---
name: ""
description: "\"이번주차 판매현황\" 요청 시 판매/반품/불량율 분석 자동 실행 (W## 주차, 목~수 기준)"
metadata: 
  node_type: memory
  type: feedback
  created: 2026-05-29
  originSessionId: 0e4dcf0c-7555-4c8f-a8ba-7623d900035c
---

# 이번주차 판매현황 자동 분석

사용자가 **"이번주차 판매현황"** 또는 유사한 요청을 하면 자동으로 다음 작업을 수행한다:

## 실행 작업

1. **주차 계산**
   - 현재 날짜 기준 직전 완료 주차 (목요일~수요일)
   - 예: 5월 29일(목) → W21 = 5/21(목)~5/27(수)

2. **분석 스크립트 실행**
   ```bash
   export SUPABASE_KEY="..." && python3 scripts/analysis/analyze_w21_final.py
   ```
   - W## 해당 주차 스크립트 사용 또는 범용 스크립트 작성
   - 반드시 SUPABASE_KEY 환경변수 설정

3. **분석 항목**
   - 판매량 (제품군별: 미니멀러그, 그레인러그, 시어서커, 사이잘룩러그)
   - 반품율 (목표 대비 달성 여부)
   - 불량율 (경결함 기준, 목표 대비 달성 여부)
   - Q2 누적 현황 포함

4. **결과 보고 형식**
   - 종합 현황 (판매/반품율/불량율)
   - 제품별 테이블
   - Q2 누적 요약
   - 주요 이슈 하이라이트

## Why

주간회의 준비 시 매번 같은 요청을 반복하지 않고, "이번주차 판매현황"만 입력하면 자동으로 분석 결과를 받을 수 있도록 함.

## How to apply

- 트리거 키워드: "이번주차 판매현황", "이번 주차 판매", "주간 판매 분석"
- 즉시 주차 계산 → 스크립트 실행 → 결과 보고
- 추가 질문 없이 바로 실행 (사용자는 결과만 보고 싶어함)

## 참고 메모리

- [[project_weekly_analysis_method]] - 주차 기준, pagination 필수
- [[project_supabase_config]] - Supabase 연결 정보
- [[project_barcode_patterns]] - 바코드 분류 순서
- [[project_weekly_meeting_cumulative]] - 주간회의 누적 현황 포함
