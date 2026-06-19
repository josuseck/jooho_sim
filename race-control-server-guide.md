# Race Control 동호회 서버 설정 가이드

> 작성일: 2026년 6월
> 이벤트: 금요일 동호회 레이스 (10명)
> 플랫폼: racecontrol.gg

---

## 공통 설정

| 항목 | 값 |
|---|---|
| 서버 타입 | Basic Server |
| 리전 | Asia |
| 비밀번호 | sr4989 |
| Max Players | 20 |
| Classes | LMGT3 + Hypercar (ALL) |
| Fixed Setup | ON |
| Formation Lap | Short Formation Lap |
| Race Client Wait | 60초 |
| Real Road Scale | X2 |
| Time Scale | 1x |
| Fuel Consumption | Realistic |
| Tyre Wear | Realistic |
| Damage | Realistic |
| Tyre Warmers | ON |
| Track Limits Rule | Default |
| Track Limits Points | 4 |
| Available Tyres | 12 |

### Driver Assists

| 항목 | 값 |
|---|---|
| Anti Lock Brakes | Off |
| Auto Shift | Off |
| Brake Help | Off |
| Driving Line | On |
| Stability Control | Off |
| Steering Help | Off |
| Auto Clutch | On |
| Invulnerability | Off |
| Opposite Lock | Off |
| Spin Recovery | Off |

### 날씨

모든 슬롯 동일 (Apply to All):
- Sky: Clear
- Chance of Rain: 0%
- Temperature: 20°C

---

## Round 1 — Le Mans (Circuit de la Sarthe)

| 항목 | 값 |
|---|---|
| Track | Le Mans (WEC) |
| Real Road | Heavy |
| Water Depth | Dry |

### 세션

| 세션 | 시간 | Time Of Day |
|---|---|---|
| Practice | 20분 | 20:00 |
| Qualifying | 10분 | 20:30 |
| Race | 25분 | 21:00 |

> 밤 시간대 레이스

---

## Round 2 — Spa-Francorchamps (드라마틱 노을)

| 항목 | 값 |
|---|---|
| Track | Spa-Francorchamps |
| Real Road | Heavy |
| Water Depth | Dry |
| **Time Scale** | **3x** |

### 세션

| 세션 | 시간 | Time Of Day | 게임 내 종료 |
|---|---|---|---|
| Practice | 20분 | 17:00 | 18:00 |
| Qualifying | 10분 | **18:00** | 18:30 |
| Race | 25분 | **18:30** | **19:45** |

> **레이스 분위기**: 황금빛 시작 → 붉은 노을 절정 → 구름 끼며 보라빛

### 날씨 슬롯 (동적 변화)

| Slot | 시점 (게임 내 시간) | Sky | Chance of Rain | Temperature |
|------|---------------------|-----|----------------|-------------|
| **Slot 1** | 시작 (18:30) | Clear | 0% | 22°C |
| **Slot 2** | 25% (18:49) | Clear | 0% | 21°C |
| **Slot 3** | 50% (19:07) | Light Clouds | 0% | 21°C |
| **Slot 4** | 75% (19:26) | Light Clouds | 0% | 20°C |
| **Slot 5** | 종료 (19:45) | Partially Cloudy | 0% | 19°C |

**효과**:
- 레이스 후반부 Light Clouds → Partially Cloudy 전환
- 노을 + 구름 조합으로 더 드라마틱한 분위기
- 온도 22°C → 19°C 자연스럽게 하락

---

## 참고 사항

- 크레딧: 20인 서버 = 20 Credits/Hour
- 트랙 변경 시 서버 새로 생성 필요 (르망 → 스파 전환 시)
- 로비 코드 생성 후 단톡에 공유
- Real Road Scale X2: 적당한 러버 빌드업 (X1=현실적, X3=과도)
- Weather Slot 구조: Slot1=시작 / Slot2=25% / Slot3=50% / Slot4=75% / Slot5=종료