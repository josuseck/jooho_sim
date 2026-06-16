---
name: feedback_weekly_date_calculation
description: 주간 데이터 분석 시 날짜 계산 규칙 - 항상 목요일~수요일 기준
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 95b19260-6215-40ea-b369-35f2c561019f
---

주간 데이터 분석 시 날짜는 **항상 목요일 ~ 수요일** 기준으로 계산한다.

**Why:** 사용자가 매번 날짜 계산이 틀린다고 지적했음. 윤달이든 상관없이 목요일부터 수요일까지가 한 주차임.

**How to apply:**

1. **기준일 확인**
   - 오늘 날짜의 요일을 먼저 확인
   - 목요일(0일차) ~ 수요일(6일차)

2. **직전 완료 주차 계산**
   - 오늘이 목요일이면: 직전 목요일 ~ 어제(수요일)
   - 오늘이 금~수요일이면: 직전 목요일 ~ 그 주 수요일

3. **2026년 기준**
   - 2026-01-01이 목요일
   - 첫 주차: W2 (2026-01-01~01-07)
   - W23 = 2026-05-28(목) ~ 2026-06-03(수)
   - 한 주차 밀리면 W0부터 시작

4. **Python 계산 예시**
   ```python
   from datetime import datetime, timedelta
   
   today = datetime(2026, 6, 5)  # 금요일
   today_weekday = today.weekday()  # 0=월, 3=목, 4=금, 6=일
   
   # 이번 주 목요일
   if today_weekday >= 3:  # 목~일
       week_start = today - timedelta(days=today_weekday - 3)
   else:  # 월~수
       week_start = today - timedelta(days=today_weekday + 4)
   
   week_end = week_start + timedelta(days=6)
   ```

5. **절대 하지 말 것**
   - 임의로 날짜 추정하지 않기
   - 반드시 Python으로 요일 계산 후 진행
   - "29일이 목요일일 것 같다"는 추측 금지
