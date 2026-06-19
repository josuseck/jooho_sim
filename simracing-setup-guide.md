# 시뮬 레이싱 셋업 종합 가이드

> 주호의 시뮬 레이싱 환경 셋업, 설정값, 트랙 공략, 구매 가이드 통합본
> 작성일: 2026년 6월
> 환경: SimuCUBE 2 Pro + BavarianSimTec Alpha + mBooster + LMU/iRacing

---

## 목차

1. [PC / 하드웨어 사양](#1-pc--하드웨어-사양)
2. [트리플 모니터 세팅 (iRacing)](#2-트리플-모니터-세팅-iracing)
3. [SimuCUBE 2 Pro 휠베이스 셋팅](#3-simucube-2-pro-휠베이스-셋팅)
4. [mBooster 페달 GT3 셋팅](#4-mbooster-페달-gt3-셋팅)
5. [시트 & 리그 (Sparco Pro 2000 QRT)](#5-시트--리그-sparco-pro-2000-qrt)
6. [LMU 인게임 셋팅](#6-lmu-인게임-셋팅)
7. [iRacing 인게임 셋팅](#7-iracing-인게임-셋팅)
8. [SimHub + DNR 플러그인](#8-simhub--dnr-플러그인)
9. [LMU 후방 카메라 → Vocore DDU 송출](#9-lmu-후방-카메라--vocore-ddu-송출)
10. [iRacing 차량 / 트랙 구매 가이드](#10-iracing-차량--트랙-구매-가이드)
11. [트랙 공략 (후지 / 르망)](#11-트랙-공략-후지--르망)
12. [LMU 데일리 레이스 시스템](#12-lmu-데일리-레이스-시스템)
13. [브레이크 바이어스 코너별 활용](#13-브레이크-바이어스-코너별-활용)
14. [타이어 온도 관리](#14-타이어-온도-관리)
15. [SimuCUBE 디스코드 정보 (LMU 진동 이슈)](#15-simucube-디스코드-정보-lmu-진동-이슈)
16. [업그레이드 계획](#16-업그레이드-계획)
17. [트러블슈팅 / 팁](#17-트러블슈팅--팁)
18. [SimHub 텔레메트리 트러블슈팅](#18-simhub-텔레메트리-트러블슈팅)
19. [mBooster 이펙트 설정 상세](#19-mbooster-이펙트-설정-상세)
20. [SimuCUBE 2 Pro 설치 및 마운팅](#20-simucube-2-pro-설치-및-마운팅)
21. [Ascher Racing 8" Dashboard](#21-ascher-racing-8-dashboard)
22. [바레인 서킷 가이드](#22-바레인-서킷-가이드)
23. [iRacing 초기 설정](#23-iracing-초기-설정)
24. [LMU 트리플 모니터 Config_DX11.ini 상세](#24-lmu-트리플-모니터-config_dx11ini-상세)
25. [주변기기 설정](#25-주변기기-설정)
26. [레이스 결과 기록](#26-레이스-결과-기록)
27. [하이퍼카 / 포지션](#27-하이퍼카--포지션)
28. [WEC 2025 실차 퀄리파잉 랩타임](#28-wec-2025-실차-퀄리파잉-랩타임)
29. [용어 사전](#29-용어-사전)
30. [하이퍼카 배터리 관리 (LMH/LMDh)](#30-하이퍼카-배터리-관리-lmhlmdh)
31. [하이퍼카 브레이킹 물리 & 실제 vs 게임](#31-하이퍼카-브레이킹-물리--실제-vs-게임)
32. [VI-RSR SimHub LED 세팅 가이드](#32-vi-rsr-simhub-led-세팅-가이드)
33. [Velocitas Imperium VI-RSR 종합 가이드](#33-velocitas-imperium-vi-rsr-종합-가이드)

---

## 1. PC / 하드웨어 사양

### 신규 빌드 (시뮬용 메인 PC)

| 부품 | 모델 | 비고 |
|---|---|---|
| **CPU** | AMD Ryzen 7 7800X3D → 9800X3D 교체 예정 | 시뮬 캐시 의존 최적화 |
| **MB** | ASUS ROG Strix B650E-E GAMING WIFI | AM5, 9800X3D 호환 (BIOS 3201+) |
| **RAM** | Crucial Pro DDR5 64GB (2x32GB) 6400MHz CL40 | 64GB는 멀티태스킹 + 르망 24h 대비 |
| **CPU Cooler** | DeepCool LQ360 ULTRA (화이트) | 360mm AIO 수랭 |
| **GPU** | PALIT RTX 5080 GAMEROCK OC 16GB | 트리플 1440p 180Hz 최적 |
| **PSU** | 슈퍼플라워 SF-1200F14XP LEADEX VII PRO PLATINUM 1200W | ATX 3.1, PCIe 5.0 12V-2x6 |
| **CASE** | LIAN LI LANCOOL 217 (화이트) | 트리플 라디 + 큰 GPU 수용 |
| **SSD** | 2TB × 3개 (총 6TB) | 시뮬 콘텐츠 여유 |
| **SYSTEM FAN** | UPSIREN UF-1 PRISM 4 PRO 13개 | (좀 과한 수량) |

총 가격: 약 3,786,112원 (다나와 정가 대비 약 120만원 절약)

### 9800X3D 업그레이드 결정

#### 7800X3D vs 9800X3D 시뮬 성능 비교

| 시나리오 | 7800X3D | 9800X3D | 향상 |
|---|---|---|---|
| LMU 단일 클래스 20대 | 130~160fps | 145~180fps | +10% |
| **LMU 2.4h 르망 62대 폭우 야간** | 80~100fps | 100~130fps | **+20~25%** |
| iRacing GT3 24대 | 150~180fps | 170~200fps | +10% |
| iRacing N24 60대 멀티클래스 | 90~120fps | 110~150fps | +20% |
| 백그라운드 앱 다중 실행 | 미세 스터터 | 부드러움 | 체감 큼 |

**결론**: 가격 차이 15~25만원으로 시뮬 헤비 시나리오 +20~25% 성능 + 5~7년 시뮬 CPU. 9800X3D 권장.

#### CPU 교체 시 윈도우 관련

- **윈도우 포맷 불필요** (같은 AM5 소켓, 같은 Zen 패밀리)
- 메인보드 BIOS만 9800X3D 호환 버전 (3201+)으로 미리 업데이트
- 교체 후 AMD 칩셋 드라이버 재설치, BIOS에서 EXPO 메모리 프로파일 재확인

### 모니터

**Samsung Odyssey G5 G50D (S32DG500) × 3대**

| 항목 | 값 |
|---|---|
| 사이즈 | 32" |
| 해상도 | QHD (2560 × 1440) |
| 패널 | IPS (OLED 아님) |
| 주사율 | 180Hz |
| 응답속도 | 1ms |
| HDR | HDR 400 |
| VRR | FreeSync + G-SYNC Compatible |
| 화면형태 | 평면 (트리플에 적합) |

**총 해상도**: 7680 × 1440 (트리플 환경)

### 림 & 휠베이스

- **휠베이스**: SimuCUBE 2 Pro (25Nm, 22-bit 인코더)
- **림**: Velocitas Imperium VI-RSR (Porsche 911 RSR 레플리카)
- **구매 시기**: 2026년 4월 (중고, 조립 완료품)
- **도착 예정**: 2026년 7월 초 (현재 유튜버 보유 중)
- **구매가**: 145만원 (Conspit MAX01 판매 후 실질 70만원)
- **입력**: 90개 (버튼 10, 인코더 8, 펑키 스위치 2, 패들 6)
- **디스플레이**: VoCore 5" 포함
- **마운트**: Simcore 사이드마운트 + Simcore 연장봉
- **이머전시 스톱**: Ultimate 스타일
- **PSU**: 외장 PSU 포함

### 페달

- **브레이크**: mBooster (MOZA, 로드셀 기반)
- **계획**: 향후 Simucube ActivePedal Pro로 업그레이드 + Co-Pedal 스로틀

### 시트 & 리그

- **시트**: Sparco Pro 2000 QRT (FIA 8855-1999 인증, 2027년까지)
- **구매가**: 중고 50만원
- **사이드마운트**: OMP (홀 36개 멀티 호환, 290mm 시트 측면 홀 매칭)
- **리그**: 자작 알루미늄 프로파일
- **슬라이더 폭**: 420mm (Sparco Pro 2000 QRT 표준)

### 대시보드

- Vocore DDU
- Arduino RGB LED (DNR Endurance 프로파일)
- DNR SimHub 플러그인 V5

---

## 2. 트리플 모니터 세팅 (iRacing)

### 핵심 원칙

**NVIDIA Surround 불필요**. iRacing은 트리플 모니터를 네이티브로 지원함.

### 설정 절차

#### 1단계: 윈도우 디스플레이 정렬

- 윈도우 설정 → 디스플레이에서 모니터 3장이 가로로 1, 2, 3 순서로 배치
- 가운데 모니터가 "주 디스플레이"로 지정
- 높이도 정확히 정렬

#### 2단계: iRacing 한 번 실행 후 종료

가운데 모니터에 풀스크린으로 띄운 다음 종료 → `rendererDX11Monitor.ini` 파일 생성됨

#### 3단계: ini 파일 수정

경로: `Documents\iRacing\rendererDX11Monitor.ini`

```ini
[Display]
NumMonitors=3
MaxFPS=0
MaxFPSWhenNotFocused=30
Adapter0=0
Adapter1=0
Adapter2=0
Output0=0
Output1=1
Output2=2
EnableTrueFullScreen=1
EnableMultiProjection=1
```

`Output0/1/2`는 윈도우 디스플레이 번호. 가운데가 Output0이 되어야 함 (0-indexed).

#### 4단계: iRacing 재실행 후 UI 설정

- Resolution: 7680×1440
- Full Screen: ON (Borderless 끄고 진짜 풀스크린)
- Monitor Type: 3 Flat Screens
- Render Scene Using 3 Projections: ON
- Nvidia Simultaneous Multi-Projection: ON (RTX 성능 이득)

#### 5단계: 물리 측정값 입력

| 항목 | 값 |
|---|---|
| Monitor Width | 32인치 16:9 = 697.8mm (실측 권장) |
| Bezel Width | 두 모니터 사이 베젤 합 두께 (mm) |
| Viewing Distance | 눈에서 가운데 모니터까지 거리 (mm) |
| Angle | 사이드 모니터 꺾인 각도 (실측) |
| FOV | Compute 버튼 클릭 |

### G-Sync 트리플에서 활성화

NVIDIA는 공식적으로 Surround 없이 멀티모니터 G-Sync 지원 안 함. MPO(Multiplane Overlay) 비활성화하면 Surround 없이도 G-Sync 동작.

- NVIDIA 공식 레지스트리: https://nvidia.custhelp.com/app/answers/detail/a_id/5157
- `mpo_disable.reg` 받아서 실행 후 재부팅

### LMU 트리플 모니터 설정

LMU도 ini 직접 수정 불필요, UI에서 설정 가능:

| 항목 | 값 |
|---|---|
| Resolution | 7680×1440 |
| Monitor Type | 3 Flat Screens |
| Monitor Width | 698mm (32인치 16:9) |
| Bezel Width | 실측 베젤 합 |
| Viewing Distance | 실측 (눈→가운데 모니터) |
| Angle | 실측 사이드 모니터 각도 |
| Render Scene Using 3 Projections | On |
| Nvidia Simultaneous Multi-Projection | On |

---

## 3. SimuCUBE 2 Pro 휠베이스 셋팅

### 스펙

- 최대 토크: 25Nm
- 22-bit 인코더
- MIGE 130ST 산업용 모터
- True Drive 소프트웨어

### 실차 Porsche 911 GT3 R 매칭 베이스라인

> **주의**: 이 값은 "망하지 않을 합리적 출발점"이지, "100% 실차 매칭"은 아님. 검증된 프로파일 (Simucube 디스코드, OverTake.gg, Boosted Media YouTube)로 시작 후 본인 손에 맞춤 조정 권장.

#### Profile: "Porsche 911 GT3 R Realistic"

```
═══════════════════════════════════════════
[OVERALL SETTINGS]
═══════════════════════════════════════════
Overall Strength: 50%
→ 25Nm × 0.5 = 12.5Nm 최대 출력
→ 911 GT3 R 실차 최대 토크 (추정 10~12Nm)와 매칭

═══════════════════════════════════════════
[FFB FILTERS]
═══════════════════════════════════════════
Reconstruction Filter: 3
→ 미세 노면 디테일 보존 + 노치 제거 균형

Damping: 4%
→ EPS의 자연 댐핑 재현
→ 911은 다른 GT3보다 댐핑 살짝 적은 편 (4륜 조향 즉각 응답)

Friction: 0%
→ 실차에 인위적 마찰 없음

Inertia: 0%
→ 림 자체 무게로 충분

Slew Rate Limit: Disabled
→ 911 GT3 R의 즉각적 응답 (rear-axle steering) 재현

Torque Bandwidth Limit: 2400 Hz (기본)

═══════════════════════════════════════════
[DIRECT INPUT FINE TUNING]
═══════════════════════════════════════════
Direct Input Reconstruction: 1
→ 미세 디테일 살리기

Recommended Minimum Force: 0%
→ Porsche의 약한 신호 그대로 (락업 직전 신호 약해짐)

═══════════════════════════════════════════
[WHEEL SETTINGS]
═══════════════════════════════════════════
Wheel Range (Rotation): 540도
→ Porsche 911 GT3 R 실차 lock-to-lock 표준

Center Spring: 0%
→ 911 GT3 R 4륜 조향이 셀프얼라인 강하게 만들어줌
```

### 검증 체크 포인트 (트랙에서)

1. **직선 토크**: 미세 노면 진동만, 너무 강하면 Reconstruction Filter +1
2. **코너 진입**: 자연스럽게 무거워짐, 가벼우면 Strength +5%
3. **트레일 브레이크**: 토크 약 40% 감소 후 회복 (노즈 다이브 표현)
4. **그립 한계**: 락업 직전 부드럽게 가벼워짐 (911 GT3 R 시그니처)
5. **셀프얼라인**: 코너 출구에서 자연스럽게 직선 복귀

### 차종별 프로파일 권장

True Drive 멀티 프로파일 + Overview 뷰 마킹으로 차종별 자동 전환 가능:

| 프로파일 | 차종 | Strength | Damping |
|---|---|---|---|
| 911 GT3 R Realistic | Porsche 911 GT3 R | 50% | 4% |
| GT3 General | BMW M4, Ferrari 296 등 | 53% | 5% |
| GT3 Cup | Porsche 911 GT3 Cup | 55% | 5% |
| Hypercar | LMU/iRacing Hypercar | 55~60% | 6% |

---

## 4. mBooster 페달 GT3 셋팅

### 답력 범위

- 최소: 13kg (페달 데드존)
- 최대: 45kg (GT3 시뮬용 적절, 50kg까지 상향 가능)

### GT3 S-Curve (8-point 사용자 정의)

| 포인트 | X (행정 %) | Y (출력 %) | 점선 위치 |
|---|---|---|---|
| 1 | 0% | 0% | 좌측 하단 끝 |
| 2 | 12% | 8% | 1번 세로 점선, 1번 가로 점선 아래 |
| 3 | 25% | 18% | 2번 세로 점선, 2번 가로 점선 아래 |
| 4 | 37% | 32% | 3번 세로 점선 살짝 지나서 |
| 5 | 50% | 50% | 중앙 (변곡점) |
| 6 | 65% | 67% | 5번~6번 세로 점선 사이 |
| 7 | 85% | 87% | 7번 세로 점선 부근 |
| 8 | 100% | 100% | 우측 상단 끝 |

### S-Curve 핵심 원리

1. **0~25% (초반)**: 완만한 부드러운 시작 → 트레일 브레이크 미세 조절 가능
2. **25~75% (중반)**: 명확한 변곡점 + 일관된 상승 → 풀브레이크 의도 명확 전달
3. **75~100% (후반)**: 가파른 상승 → ABS 락업 직전 강한 답력

### GT3 차종별 미세 조정

| 차종 | 조정 |
|---|---|
| **Porsche 911 GT3 R** (후륜) | 위 표 그대로 |
| BMW M4 GT3 (전륜) | 초반 5~10% 더 강하게 |
| Ferrari 296 GT3 (미드) | 표준 그대로 |
| McLaren 720S GT3 | 초반 부드럽게 |
| Hypercar/LMP | 후반 더 강하게 (다운포스 ↑) |

### 트랙 테스트 후 미세 조정 가이드

| 느낌 | 조정 |
|---|---|
| 초반 진입이 너무 빨리 강해짐 | Point 2~3 -2% |
| 중간에서 답력이 약함 | Point 4~5 +3% |
| 풀브레이크 시 ABS 락업 안 됨 | Point 7 +3% |
| ABS 락업 너무 자주 | Point 7~8 -3% |
| 전체 답력 약함 | 최대 답력 45kg → 50kg |

### Pit House에서 답력 조절

Pit House는 SW 답력 조절 가능 (mBooster). Co-Pedal과 다름:
- Co-Pedal (Simucube)은 패시브 페달 → 답력은 수동 (프리로드 나사, Arc 프로파일)
- mBooster는 액티브 → SW에서 답력 곡선 자유 조정

---

## 5. 시트 & 리그 (Sparco Pro 2000 QRT)

### 시트 스펙

- **FIA 8855-1999 인증** (2027년까지 유효)
- **QRT 쉘** (유리섬유 + 케블라)
- **무게**: Shell 6.8kg / Seat 8kg
- **사이즈**: 어깨 580mm, 베이스 630mm (좁은 편)
- **마운트**: 바텀 271×345mm (M8), 사이드 290mm (M8)

### 카탈로그 도면 치수

| 항목 | 값 |
|---|---|
| Front FIX | 421mm |
| Rear FIX | 407mm |
| 시트 측면 홀 간격 | 290mm |
| 시트 베이스 홀 패턴 | 271 × 345mm |
| 베이스 외폭 | 630mm |
| 어깨 외폭 | 580mm |

### OMP 사이드마운트 + Sparco 시트

- OMP HC/731E 사이드마운트 = Sparco 290mm 홀 호환
- OMP는 홀 다수 (36-hole 버전) → 슬라이더 폭 자유 조정
- **권장 슬라이더 폭**: 420mm (Sparco 표준)

### 자작 알루미늄 프로파일 리그

- **시트 마운트 레일 간격**: 420mm (Sparco 표준, OMP도 맞춤 가능)
- **마운트 레일 길이**: 최소 400mm
- **볼트**: M5 (모니터/액세서리 마운트), M8 (시트/슬라이더)
- **리그 전체 외폭**: 800~900mm

---

## 6. LMU 인게임 셋팅

### Force Feedback

```
[Settings → Controls → Force Feedback]
Car-specific FFB Multiplier: 100%
→ Porsche 제조사 공식 데이터 그대로 사용

FFB Smoothing: 0
→ 911 GT3 R 디테일 보존 (필수)

Steering Force Output Min: 0%
→ 인위적 부스트 없음

Use Steering Torque Minimum: Off
```

### In-Car Settings (Porsche 911 GT3 R)

```
Wheel Lock: 540도 (Tuner와 일치)
ABS: 3~5 (트랙/날씨에 따라)
TC: 3~5 (트랙/날씨에 따라)
Brake Bias: 51~53% (911 GT3 R 후륜 엔진 보정)
```

### 후방 카메라 위치 조정 키바인드

| 조작 | 키 |
|---|---|
| 시트 이동 | 키패드 화살표 (수식키 없이) |
| 좌측 미러 | Ctrl + 키패드 화살표 |
| 우측 미러 | Alt + 키패드 화살표 |
| 센터 미러 (후방 카메라) | Ctrl + Alt + 키패드 화살표 |
| 물리 미러 (룸미러) | Shift + 키패드 화살표 |

**주의**: 시트 이동 시 미러가 조절되면 → Ctrl/Shift 키가 stuck 상태일 가능성. 가상 키보드 (Win + Ctrl + O) 실행해서 확인.

---

## 7. iRacing 인게임 셋팅

### Force Feedback

```
[Options → Controls → Force Feedback]
Strength: Auto (Force Feedback Tester 사용)

Damping: 0%
→ Tuner에서 처리 (4%), 게임에서 추가 안 함

Min Force: 0%
→ 911 GT3 R 약한 신호도 그대로

Use Linear Mode: ON
→ 필수 (실차 매칭)
```

### Force Feedback Tester 사용법

1. iRacing에서 Porsche 911 GT3 R로 Test Drive 진입
2. 빠른 코너 들어가서 그립 한계까지 푸시
3. Garage → Force Feedback Tester 실행
4. 자동으로 측정된 토크값 확인 (보통 8~12 Nm)
5. 그 값을 "Wheel Force"에 입력 → 클리핑 없이 실차 토크 정확 출력

### 인카 컨트롤 키바인딩 (중요)

**iRacing은 차량 탑승 시에만 해당 컨트롤이 활성화**됨 (LMU와 다른 점).

올바른 절차:
1. Test Drive 또는 Practice 세션 진입 (TC/ABS 지원 차량 선택)
2. 차량 탑승 상태에서 Options → Controls 열기
3. TC +/-, TC Cut +/-, TC Slip +/-, ABS +/-, Brake Bias +/- 검은색으로 표시됨
4. 림 버튼/로터리에 바인딩

매핑되면 모든 TC 지원 차량에서 작동 (글로벌 설정).

### BavarianSimTec Alpha 림 매핑 추천

| 우선순위 | 기능 | 사용 빈도 |
|---|---|---|
| 1 | Brake Bias +/- | 매우 자주 (코너별) |
| 2 | TC +/- | 자주 (트랙 상태/마모) |
| 3 | ABS +/- | 가끔 (비/타이어 마모) |
| 4 | Engine Map +/- | 가끔 (연료 절약/푸시) |
| 5 | TC Slip +/- | 거의 안 씀 (셋업 단계) |

### TC vs TC Cut vs TC Slip 차이

- **TC**: 메인 TC 강도 (1~12단계)
- **TC Slip**: TC가 개입 시작하는 슬립 한계 - 낮으면 빨리 개입
- **TC Cut**: TC 개입 시 출력 감소량 - 높으면 크게 줄임

실전에서는 **TC만 자주 조정** (3~5단계), Slip/Cut은 셋업 단계에서 한 번 잡고 끝.

---

## 8. SimHub + DNR 플러그인

### DNR SimHub Plugin V5.0 (2026 메이저 업데이트)

#### V5 주요 변경사항

- 완전 재설계된 모던 인터페이스
- 새로운 애니메이션 홈페이지
- 향상된 디바이스 설정 경험
- 새로운 조명 및 텔레메트리 커스터마이징
- 확장된 앰비언트 라이팅 + 코파일럿 LED
- 개선된 밝기 컨트롤 + 핫키 할당

#### 주의 사항

- 기존 V4 프로파일 폴더 백업 (Documents/SimHub/PluginsData/DanielNewmanRacing)
- 첫 실행 시 마이그레이션 확인
- DNR Endurance 대시보드 호환성 검증
- Include Profile 기능 (듀얼 Arduino LED) 작동 확인

### V6.0 LED 프로필 업데이트 (예정)

**LMU 2026 차량 RPM 데이터 변경 대응**:
- 매 LMU 업데이트마다 차량별 RPM 데이터 변경됨
- DNR이 직접 처리 중, V6.0에서 수정 포함
- 사용자 추가 신고 불필요
- 임시 대응: 그냥 기다리기 또는 차량별 RPM 수동 조정

### 대시보드 순환 핫키 이슈

#### 문제

- "다음 대시 템플릿으로 순환" = 모든 대시보드 순환 (즐겨찾기 무시)
- "즐겨찾기 대시보드만 순환" 기능 = SimHub 9.x에 **기본 제공되지 않음**

#### 해결책 (3가지)

**해결책 1: 안 쓰는 대시보드 삭제 (가장 간단)**
- Dash Studio → 대시보드 우클릭 → Delete from library
- 4~5개만 남기면 자동 순환이 즐겨찾기 효과

**해결책 2: Per Car Playlist (자동 전환)**
- Devices → 본인 장치 → "Per Car Playlist" 섹션
- 게임 선택 → 차량별 대시보드 지정
- 차량 바꾸면 대시보드 자동 전환

**해결책 3: 카테고리로 관리**
- 즐겨찾기 폴더 만들어서 관리 목적

### SimHub 대시보드 다운로드 사이트

| 사이트 | 특징 | 가격 |
|---|---|---|
| **OverTake.gg** | 가장 큰 라이브러리, 리뷰/평점 | 무료 + 유료 |
| **SimHub 공식 디스코드 #dashboards-share** | 최신, 빠른 접근 | 무료 |
| **Boxx Community** | LMU 전용 섹션 | 무료 |
| **DNR Patreon** | 주호 이미 사용 | 유료 |
| **Romain Patreon** | GT3 특화 인기 | 유료 |
| **GitHub** | 오픈소스 | 무료 |

#### 링크

- OverTake.gg: https://www.overtake.gg/downloads/categories/simhub-dashboards.110/
- SimHub 공식 디스코드: https://discord.gg/wAghCfBkrV
- DNR Patreon: https://www.patreon.com/danielnewmanracing

---

## 9. LMU 후방 카메라 → Vocore DDU 송출

### 문제

LMU 후방 카메라 뷰가 트리플 모니터 환경에서 **가운데-사이드 모니터 경계에 걸침** → SimHub Screen Capture로 한 번에 못 잡음 (NVIDIA Surround 미사용 시).

### 해결책: LMU 가상 미러 위치 옮기기

#### 1단계: 차에 탑승 후 미러 위치 조정

**Ctrl + Alt + 키패드 화살표**로 센터 미러 (후방 카메라) 이동:
- Ctrl + Alt + 키패드 4/6: 좌우 이동
- Ctrl + Alt + 키패드 8/2: 상하 이동
- Ctrl + Alt + 키패드 +/-: 크기 조정

후방 카메라를 **가운데 모니터 상단 정중앙**에 완전히 들어오도록 위치/크기 조정.

#### 2단계: SimHub Screen Capture 설정

1. SimHub → Dash Studio → 새 대시 생성
2. Vocore DDU 해상도에 맞춰 캔버스 크기 설정
3. **Screen Capture 위젯** 추가
4. **Source: Monitor 2** (가운데 모니터)
5. 캡쳐 영역 좌표 입력 (예: x=680, y=0, w=1200, h=250)
6. 출력 = Vocore DDU
7. 갱신 속도 30Hz 권장 (60Hz는 부하 큼)

### 차별 프로파일 저장

LMU 후방 카메라는 차마다 위치/크기 다름. 차별 프로파일로 저장:
- Porsche 911 GT3 R 전용 위치
- Ferrari 296 LMGT3 전용 위치
- 등등

---

## 10. iRacing 차량 / 트랙 구매 가이드

### 벌크 할인 정책

| 동시 구매 | 할인율 |
|---|---|
| 3~5개 | 10% |
| **6개 이상** | **15%** |
| 누적 40개+ | 영구 20% |
| 모든 콘텐츠 보유 | 30% 로열티 |

차량/트랙 구분 없이 합쳐서 카운트. **5개 살 거면 1개 더 추가해서 6개로 가는 게 이득**.

### 추천 구매 리스트 (6개 = 15% 할인)

| # | 항목 | 정가 |
|---|---|---|
| 1 | Porsche 911 GT3 R (992) | $11.95 |
| 2 | Porsche 911 GT3 Cup (992) | $11.95 |
| 3 | Ferrari 296 GT3 | $11.95 |
| 4 | Michelin Raceway Road Atlanta | $14.95 |
| 5 | Nürburgring Nordschleife | $14.95 |
| 6 | (추가 옵션) Spa-Francorchamps | $14.95 |
| | **합계 (정가)** | **약 $80** |
| | **15% 할인 후** | **약 $68** |

### 차량 클래스 구분 (헷갈리기 쉬운 부분)

| 차량 | 클래스 | 용도 |
|---|---|---|
| **Porsche 911 GT3 Cup (992)** | 원메이크 Cup | TC/ABS 없음, 순수 드라이빙 |
| **Porsche 911 GT3 R (992)** | GT3 | IMSA, WEC LMGT3, GT3 시리즈 |
| **Porsche 963** | Hypercar/GTP | WEC Hypercar, IMSA GTP |
| **Porsche 911 RSR** | GTE (구) | 레거시 차량 |
| **Ferrari 296 GT3** | GT3 | iRacing에 한 가지만 존재 (WEC 버전 따로 없음) |
| **Ferrari 499P** | Hypercar | 르망 24h 우승 차량 (2025 추가) |

### Nürburgring 레이아웃 선택

iRacing은 GP와 Nordschleife를 별도 판매:

| 콘텐츠 | 가격 | 단독 구매? |
|---|---|---|
| Nürburgring GP-Strecke | $14.95 | 가능 |
| **Nürburgring Nordschleife** | $14.95 | 가능 |
| Nürburgring Combined (24h 풀트랙) | - | GP + Nordschleife 둘 다 보유 시 자동 활성화 |

**Nordschleife 단독으로도 충분** (VLN/NLS 시리즈, hotlap, 일부 24h). 24h 풀 풀코스 도전 시에만 GP 추가.

### Nordschleife 입문 가이드

#### 단계별 학습

| 단계 | 시간 | 목표 |
|---|---|---|
| 1단계: 트랙 외우기 | 2~4주 | 1랩 10~12분 (잃어도 OK), 코너 위치 외우기 |
| 2단계: Hotlap 페이스 | 2~4주 | 911 GT3 R로 8분대 진입 → 7분 30초대 진입 |
| 3단계: Sprint 시리즈 | - | 1시간 미만 멀티플레이어 실전 |
| 4단계: N24/Endurance | 5시간+ | 24시 도전 (팀으로) |

#### Nordschleife 특성

- **154 코너**, 한 랩 20.8km
- 블라인드 코너 다수 (코너 진입 시 출구 안 보임)
- 엘리베이션 변화 300m
- 점프 구간 (Flugplatz, Pflanzgarten)
- 출구 마진 거의 없음

#### 셋업 (Nordschleife 전용)

- 댐퍼 부드럽게 (범프 흡수)
- 리어 윙 낮게 (긴 직선)
- 라이드 하이트 높게 (점프 시 바닥 안 닿게)
- 연료 풀탱크 (1시간+ 스틴트)

---

## 11. 트랙 공략 (후지 / 르망)

### 후지 클래식 레이아웃 (LMU 2025 추가)

#### WEC 표준 vs 클래식 차이

- WEC 표준의 까다로운 Turn 11-12-13 시케인 우회
- **중속 우측 스위퍼**로 대체
- 평균 랩타임 1.5~2초 빠름

#### 후지 클래식 LMGT3 (Porsche 911 GT3 R) 페이스 기준

| 단계 | 페이스 |
|---|---|
| 적응 | 1:42대 |
| 안정 | 1:40~1:41대 |
| 베스트 | **1:39대** (주호 현재 페이스, Bronze 상위권) |
| 폴포지션 | 1:38대 (Bronze 최상위) |

#### 코너별 공략

**T1 (대형 헤어핀, 1.47km 직선 끝)**
- 150~100m 보드 사이에서 풀브레이크
- 트레일 브레이크로 노즈 진입
- BB 살짝 뒤로 (51~52%)
- 늦은 에이펙스 → 출구 트랙션 우선

**T3 (빠른 좌측 고속 코너)**
- **풀브레이크 코너 아님**
- Lift-and-coast 또는 10~15% 브레이크만
- 진입 속도 190~200km/h
- 5단 유지 (다운시프트 불필요)
- 라인: 외측 → 좌측 연석 살짝 터치 → 외측
- 911 GT3 R 후륜엔진 + 4륜 조향 활용

**100R (T4-5, 더블 좌측)**
- 풀스로틀 또는 lift만
- 911 GT3 R 4륜 조향 셀프얼라인 효과적

**헤어핀 (T6-7)**
- 후지 최저속 코너
- 강한 브레이킹 + 늦은 에이펙스
- BB -1% (52%)
- 2단 다운시프트
- 출구 트랙션 매우 중요

**클래식 새 우측 스위퍼 (이전 시케인 자리)**
- 50m 보드 직전까지 풀스로틀
- 살짝 브레이크 → 3단 다운시프트
- 샤프하게 턴인 → 늦은 에이펙스
- 출구 풀스로틀로 T15까지

**T15**
- 클래식에서 더 강한 브레이킹 포인트
- 라인 정확히 잡아야 T16 진입 OK

**T16 Panasonic Corner (마지막 코너)**
- 1.47km 직선 진입 → 출구 트랙션 결정적
- 0.1초 빨리 풀스로틀 = 다음 랩 T1까지 0.3초 차이
- 늦은 에이펙스
- TC 적당히 (Fixed니까 기본값)

#### GT3 후지 권장 셋업 (Open setup 시)

| 항목 | 값 |
|---|---|
| 리어 윙 | 한 단계 낮춤 (직선 톱스피드 ↑) |
| 프론트 다운포스 | 표준 |
| 브레이크 바이어스 | 52% (살짝 뒤) |
| 타이어 압력 (전륜) | 26.0 psi |
| 타이어 압력 (후륜) | 27.0 psi |
| 앞 캠버 | -3.8 ~ -4.0 |
| 앞 토우 | -0.1 (out) |

### Le Mans (Circuit de la Sarthe)

#### 트랙 스펙

- **길이**: 13.626km
- **코너 수**: 38개
- **트랙 타입**: 부분 공도 + 부분 전용 서킷
- **LMGT3 랩타임**: 3:50~4:10

#### 트랙 구성

| 구간 | 주요 코너 |
|---|---|
| Stage 1 | 메인 스트레이트, Dunlop Bridge, Esses, Tertre Rouge |
| **Stage 2** | **Mulsanne Straight (6km 직선) + 2개 시케인** |
| Stage 3 | Mulsanne Corner (직각 우측 헤어핀) |
| Stage 4 | Indianapolis & Arnage |
| **Stage 5** | **Porsche Curves (시그니처)** |
| Stage 6 | Ford Chicanes |

#### 911 GT3 R 강점/약점 (르망)

**강점**:
- Porsche Curves (후륜엔진 + 4륜 조향) → 0.3~0.5초 이득
- 헤어핀 진입 (Mulsanne, Arnage)
- 셀프얼라인

**약점**:
- Mulsanne 6km 직선 → 톱스피드 부족 (-5~10km/h vs BMW M4)

#### Sector 3 (Porsche Curves) 상세 공략

연속된 우-좌-우-좌 빠른 코너. **르망의 진짜 핵심**.

**Porsche Curves 1 (우측 고속)**
- 진입 속도 220~230km/h
- Lift only 또는 5~10% 브레이크
- 5단 유지
- 외측 → 정점 (우측 연석) → 외측

**Porsche Curves 2 (좌측 고속)**
- 210~220km/h
- Lift only
- 5단 유지
- 4륜 조향 빛나는 곳

**Porsche Curves 3 (우측 고속)**
- 200~210km/h
- Lift 또는 10% 브레이크
- 5단 유지

**Porsche Curves 4 (좌측, 살짝 느림)**
- 180~200km/h
- 20~30% 브레이크
- 4단 다운시프트 (또는 5단)
- 늦은 에이펙스

**핵심 원칙**:
1. 연속성: 한 코너 출구 외측 = 다음 코너 진입 외측
2. 속도 유지: 한 번 잃으면 회복 어려움
3. 브레이크 최소: Lift-and-coast 위주
4. 트랙 마진 거의 없음
5. 외측 연석 적극 활용

**Ford Chicanes (마지막 시케인)**
- 좌-우 / 우-좌 빠른 전환
- 연석 적극 사용
- 출구 트랙션 = 메인스트레이트 페이스

#### Sector 3 단축 가능 시간 (911 GT3 R)

| 영역 | 단축 가능 |
|---|---|
| Porsche Curves 1~4 (Lift-only 또는 5~10%) | 0.4~0.6초 |
| Ford Chicane 1 (연석 적극) | 0.1~0.2초 |
| Ford Chicane 2 (연석 적극) | 0.1~0.2초 |
| 메인스트레이트 진입 풀스로틀 0.1초 빠르게 | 0.2초 |
| **총 단축** | **0.8~1.2초** |

---

## 12. LMU 데일리 레이스 시스템

### SR vs DR (헷갈리기 쉬움)

- **SR (Safety Rating)**: 어떤 카테고리 접근 가능한지
- **DR (Driver Rating)**: 그 카테고리 내 어느 스플릿에 배정될지

같은 시간 등록자가 많으면 DR 기준 자동 분리:
- Split 1: DR 상위권 (가장 빠른 사람들)
- Split 2: DR 중위권
- Split 3+: DR 하위권

### 카테고리

| 카테고리 | 필요 SR | 레이스 시간 | 그리드 |
|---|---|---|---|
| Beginner | Bronze | 20분 | 20~22대 |
| Intermediate | Silver | 30분 | 38대 |
| Advanced | Gold | 40~60분 | 44~62대 |
| Weekly (WEC, 2.4h) | S2 | 100~144분 | 38~62대 |

### 주호 현재 상태

- **SR**: Gold 2 (Advanced 카테고리 가능)
- **DR**: Bronze 3 (자주 Bronze에서 뛰셔서)
- **페이스**: 후지 1:39대

### DR 빠르게 올리는 법

1. 예선 잘 보기 (5위 안 들면 DR 큰 영향 없음)
2. 포디움 노리기 (1~3위 완주가 DR 가장 효과적)
3. DNF 절대 피하기 (큰 손해)
4. 상위 스플릿 가서 중위 마무리 > 하위 스플릿 우승

### Bronze 클래스의 특수성

- 누구나 참여 (SR 안 따짐)
- High assists (ABS, TC 풀파워)
- Tyre warmer 켜짐
- Fixed setup (대부분)
- 1랩 사고 매우 흔함

**Bronze에서 폴투윈 < Intermediate 포디움** (DR 상승 폭)

### 2.4 Hours of Le Mans (Special Events)

| 항목 | 내용 |
|---|---|
| 트랙 | Le Mans WEC |
| 클래스 | Hypercar + LMP2 + LMGT3 멀티 |
| 시간 | 144분 (10x 타임스케일 = 현실 24h) |
| 주야 전환 + 우천 가능 |
| 그리드 | 44~62대 |
| 조건 | SR B2+, Rookie/Warning 뱃지 없음, 팀 단위 |

**PC 사양**: 7800X3D + RTX 5080 + 64GB → 풀옵션 60+fps 가능

### RaceCenter.fr 계정 연동

LMU 비공식 통계 사이트, 본인 결과 자동 트래킹.

**연동 절차**:
1. RaceCenter.fr 계정 만들기 (Steam 연동)
2. LMU 실행 (메인 메뉴까지만)
3. RaceCenter 페이지에서 "Download activator" 클릭
4. .exe 더블클릭 실행 (한 번만)
5. 자동으로 `coherent_local_storage.json` 읽고 인증
6. .exe 삭제 가능

**안전성**:
- 설치되는 거 없음
- 읽기 전용
- nonce 24h 만료
- LMU 공식 API 미공개라 이 방식이 표준

---

## 13. 브레이크 바이어스 코너별 활용

### 기본 원리

브레이크 바이어스 (BB) = 전체 브레이크 압력 중 앞/뒤 분배 비율.

- **앞으로 (BB↑)**: 전륜 강하게 → 노즈 다이브 ↑ → 트레일 브레이크 시 노즈 잘 들어감
- **뒤로 (BB↓)**: 후륜 강하게 → 후륜 그립 한계 ↑ → 진입 회전 ↑

### 코너별 BB 전략

| 코너 타입 | BB 조정 |
|---|---|
| 슬로우 헤어핀 | 1~2% 뒤로 (회전 ↑) |
| 패스트 코너 | 살짝 앞으로 (안정 ↑) |
| 다운힐 브레이킹 | 뒤로 (전륜 락 방지) |
| 업힐 브레이킹 | 앞으로 (균형) |

### Porsche 911 GT3 R 베이스 BB

후륜엔진 + 자연적 후륜 하중 → 베이스 BB **약간 뒤 (51~53%)** 가 기본.

### 몬자 코너별 BB 예시

| 구간 | BB 권장 |
|---|---|
| 1번 시케인 (헤어핀) | 51~52% |
| 2번 시케인 | 52~53% |
| 레즈모 1, 2 | 54~55% |
| 아스카리 | 53~54% |
| 파라볼리카 | 54~55% |

### BB 조작 주의

1. 너무 자주 바꾸지 마세요 (헷갈림)
2. 베이스 BB부터 잘 잡기
3. 타이어 마모 따라 변화 (후반 스틴트 후륜 마모 ↑면 BB 앞으로)
4. 1~2% 단위 미세 조정

---

## 14. 타이어 온도 관리

### Michelin LMGT3 작동 온도 윈도우

| 상태 | 온도 (°C) | 그립 |
|---|---|---|
| 콜드 | ~70°C 이하 | 매우 낮음 |
| 워밍 중 | 70~80°C | 50~70% |
| **적정 (스위트 스팟)** | **80~95°C** | **플라잉 랩 최적** |
| 약간 오버 | 95~105°C | 그립 ↓ |
| 오버히트 | 105°C+ | 그립 급락 |

### 콜드 스타트 레이스 전략 (Intermediate 30분, 타이어 워머 OFF)

#### 1. 포메이션 랩 / 그리드 대기

- 스티어링 좌우로 흔들기 (슬릭 표면 온도 ↑)
- 브레이크 페달 살짝 (브레이크 디스크 + 타이어 데움)

#### 2. 1랩차

- 타이어 온도 40~60°C 수준
- 첫 코너 풀브레이크 금물 (70% 압력부터 점점 ↑)
- 코너 진입 속도 -5~-10km/h
- 스로틀 출구 조심 (후륜 슬립 시 스핀)

#### 3. 2~3랩차

- 타이어 온도 70~80°C 도달
- 80% 페이스로 점진적 푸시
- 코너별 그립 한계 다시 학습

#### 4. 4랩차 이후

- 80°C 이상 안정
- **풀 페이스 어택 시작**

### Porsche 911 GT3 R 콜드 매니지먼트

후륜 엔진 + 후륜 구동:
1. 후륜 트랙션 조심 (1랩차 첫 풀스로틀 시점 +0.5초)
2. 트레일 브레이크 자제 (전륜 락업 위험)
3. 연석 회피 (콜드 시 충격에 슬립)

### 타이어 압력 (Open setup 시)

| 상태 | 콜드 | 핫 목표 |
|---|---|---|
| Front | 22~25 psi | 27~29 psi |
| Rear | 22~25 psi | 26~28 psi |
| 오버히트 | - | 30+ psi (그립 ↓) |

### 예선 플라잉 랩 잡는 법

1. 아웃 랩: 천천히, 위빙 + 브레이크 살짝
2. 워밍 랩 (1~2랩): 80% 페이스
3. 타이어 80°C 도달 확인
4. **플라잉 랩 1~2개** (4타이어 다 녹색일 때)
5. 쿨다운 후 재시도

콜드 → 핫 도달 = 2.5~3랩 (트랙 따라 다름)

---

## 15. SimuCUBE 디스코드 정보 (LMU 진동 이슈)

### 공식 디스코드

🔗 **https://discord.gg/simucube**

활성 채널:
- #simucube-2: SC2 사용자 셋팅/트러블슈팅
- #rigs: 본인 셋업 자랑/공유
- #hot-lap-hangout: 프로 드라이버 게스트 Q&A

### LMU + SimuCUBE 2 휠 진동 이슈

#### 공식 답변 (Mika | Simucube)

> "**시뮬 문제입니다.**" (LMU 게임 자체 버그, SimuCUBE 문제 아님)

#### 영향받는 차종 (확인됨)

- BMW M4 GT3
- Duqueine D09 (LMP3)
- Ligier JS P325 (LMP3)
- (911 GT3 R은 비교적 영향 적음)

#### 해결책 우선순위

| 우선순위 | 해결책 | 효과 |
|---|---|---|
| 1 | **True Drive → Ultra Low Latency OFF** | 가장 간단, 많은 사용자 효과 봄 |
| 2 | **lmuffb 앱 사용** | LMU 개발팀 (Sergi Sebas) 본인 추천 |
| 3 | 인게임 FFB Smoothing 5~7로 상향 | 디테일 손상, 최후 수단 |
| 4 | 영향 차종 회피 (BMW M4 → Porsche 911 등) | 단기 대응 |

### lmuffb 앱

🔗 **GitHub**: https://github.com/coasting-nc/LMUFFB

#### 작동 원리

LMU의 게임 자체 FFB를 차단하고, **앱이 텔레메트리 기반으로 새 FFB 신호 생성해서 SimuCUBE로 전송**.

#### 설치/설정

1. GitHub에서 다운로드
2. 쓰기 권한 있는 위치 (Downloads 폴더)에 압축 해제
3. LMU 실행 후 **인게임 FFB Strength = 0%** 설정
4. True Drive에서 **모든 댐핑/스무딩 OFF**
5. lmuffb.exe 실행
6. "FFB Device"에서 SimuCUBE 선택
7. "Game FFB is blocked" 표시 확인
8. 슬라이더 조정:
   - Self Aligning Torque
   - Lateral G
   - Scrub Drag
   - Static Noise Filter (진동 시, Target 10-12 Hz)
   - Master Gain (0~200%)
   - Max Torque Ref

### 자동 프로파일 전환 (보너스 정보)

True Drive의 **Overview 뷰**에서 프로파일 마킹하면 차종별 자동 전환 가능 (Tag와 무관).

---

## 16. 업그레이드 계획

### Simucube ActivePedal Pro + Co-Pedal (페달 업그레이드)

#### ActivePedal Pro (브레이크) - 햅틱 기능

| 항목 | 값 |
|---|---|
| 최대 답력 | 120kg |
| 모터 출력 | 햅틱 풀 지원 |
| 가격 | 약 €800~900 |

**햅틱 기능**:
- ABS 락업 피드백
- 노면 디테일
- 휠 슬립
- 사용자 정의 (True Drive 통합)

#### Co-Pedal (스로틀) - 패시브 페달

| 항목 | 값 |
|---|---|
| 가격 | €373.99 (약 55~58만원) |
| **진동 기능** | **없음 (패시브)** |
| 답력 조절 | **수동 (프리로드 나사, Arc 프로파일)** |
| 답력 (스로틀) | 약 11kg (110N) |
| 답력 (클러치) | 약 25kg (250N) |
| Travel | 30 / 50 / 70mm 3단계 |
| 호환 | Simucube ActivePedal 전용 |

**핵심 특징**:
- 2-in-1 (스로틀 ↔ 클러치 60초 전환)
- 51% 재생 소재 (Co-Pedal은 친환경 라인)
- Arc Technology (특허 출원 중)
- Hall 각도 센서 (drive-by-wire 방식)

**중요**: Co-Pedal은 Simucube ActivePedal 필수 (mBooster와 호환 안 됨).

#### 총 예산

| 구성 | 가격 |
|---|---|
| ActivePedal Pro + Co-Pedal (스로틀) | 약 €1,170~1,270 (한화 175~190만원) |
| 3-pedal (Co-Pedal 추가, 클러치) | 약 €1,550~1,650 (한화 230~250만원) |

**클러치 필요성**: LMU/iRacing GT3 = 패들시프트 → 클러치 거의 안 씀. H-shifter 차량 (랠리, 클래식) 안 타시면 불필요.

### Sparco Lap 장갑 (FIA 인증)

- 가격: $195 (한화 약 27만원)
- 시뮬용으로 핏감 우수
- Elastic Cuff System + Pre-Curved Hybrid Fingers + Anatomically correct palm
- 엄지 봉제선 외부 = 정상 (Hybrid 스티칭, 손바닥 압점 방지)

대안:
- Sparco Futura ($175) - 친환경, 51% 재생 소재
- 시뮬 전용 (Sparco Hypergrip, GripRoyal) - $50~100, 가성비

---

## 17. 트러블슈팅 / 팁

### 시트 이동 키가 미러 조정으로 작동 시

원인: Ctrl/Shift 키 stuck 상태

확인:
- 가상 키보드 실행: **Win + Ctrl + O** 또는 실행창에서 "osk"
- Ctrl/Shift/Alt 키 색상 확인 (파란색 = stuck)

해결:
1. 키 강하게 눌렀다 떼기
2. 윈도우 고정 키 비활성화 (설정 → 접근성 → 키보드)
3. 키보드 청소 or 교체
4. LMU 시트 이동 키 재바인딩

### iRacing 인카 컨트롤이 안 보일 때

**iRacing은 차량 탑승 시에만 인카 컨트롤 표시** (LMU와 다른 점).

해결:
1. Test Drive 세션 진입
2. 차량 탑승 상태
3. Options → Controls 열기
4. TC/ABS/BB 항목이 검은색으로 표시됨

### Tuner 자동 프로파일 전환 설정

True Drive → **Overview 뷰**에서 프로파일 마킹 (Tag 기능과 무관)

### Le Mans Ultimate 계정 연동 (RaceCenter)

🔗 https://racecenter.fr

설정:
1. RaceCenter.fr 가입 (Steam)
2. LMU 메인 메뉴 실행
3. RaceCenter에서 activator .exe 다운로드
4. .exe 실행 (한 번만, 24h 만료)
5. 연동 영구 유지

---

## 부록: 빠른 참조

### True Drive 프로파일 (Porsche 911 GT3 R)

```
Overall Strength: 50%
Reconstruction Filter: 3
Damping: 4%
Friction: 0%
Inertia: 0%
Slew Rate: Disabled
Bandwidth: 2400 Hz
Wheel Range: 540도
```

### mBooster 페달 GT3 S-curve (8-point)

```
P1: (0%, 0%)
P2: (12%, 8%)
P3: (25%, 18%)
P4: (37%, 32%)
P5: (50%, 50%)
P6: (65%, 67%)
P7: (85%, 87%)
P8: (100%, 100%)
답력: 13kg ~ 45kg
```

### 시트 / 슬라이더

```
Sparco Pro 2000 QRT
시트 측면 홀: 290mm (M8)
시트 베이스 홀: 271×345mm (M8)
슬라이더 폭: 420mm
OMP HC/731E 사이드마운트 (홀 자유 조정)
```

### iRacing 인게임 FFB

```
Strength: Auto (FFB Tester)
Damping: 0%
Min Force: 0%
Use Linear Mode: ON
```

### LMU 인게임 FFB

```
Car-specific FFB Multiplier: 100%
FFB Smoothing: 0
Steering Force Output Min: 0%
Use Steering Torque Minimum: Off
```

### 후지 클래식 (911 GT3 R) 목표 페이스

```
적응: 1:42대
안정: 1:40~1:41대
베스트: 1:39대 (현재)
폴포지션: 1:38대 (목표)
```

### 9800X3D 업그레이드 절차

```
1. BIOS 업데이트 (B650E-E, 3201+)
2. AMD 칩셋 드라이버 최신화
3. 윈도우 빠른 시작 비활성화
4. 백업
5. CPU 물리 교체 (수랭 분리/장착)
6. 부팅 확인 (POST)
7. AMD 칩셋 드라이버 재설치
8. BIOS EXPO 메모리 프로파일 재확인
9. 작업관리자에서 9800X3D 인식 확인
```

### 검증된 셋팅 출처 (제 베이스라인보다 신뢰성 ↑)

- **Simucube 공식 디스코드** (#simucube-2 채널)
- **OverTake.gg** (LMU + SimuCUBE 프로파일)
- **Boosted Media YouTube** (Will Ford)
- **James Baldwin LMU 프로파일** (Simucube 디스코드)
- **LMU 공식 커뮤니티 포럼**

---

## 18. SimHub 텔레메트리 트러블슈팅

### LMU ABS/휠 록업 텔레메트리 끊김

**증상**: ABS/휠 록업 텔레메트리가 오다 안 오다 함

**해결책**:
1. SimHub → Settings → Games → LMU
2. **"Configure game now"** 재실행
3. SimHub 재시작

**원리**: 
- SimHub은 `rFactor2SharedMemoryMapPlugin64.dll` 사용
- 별도 "LMU 전용 플러그인"은 없음
- 게임 설정 재구성이 핵심

---

## 19. mBooster 이펙트 설정 상세

### 텔레메트리 기반 FFB (모션 없는 리그)

| 이펙트 | 설명 | 모션 없는 리그 권장 |
|---|---|---|
| **G-포스** | 가속/감속 시 페달 저항 변화 | ❌ OFF (이질감 큼) |
| **노면 질감** | 커브/노면 변화 미세 진동 | ❌ OFF |
| **ABS** | ABS 작동 시 진동 | ✅ ON |
| **TC** | TC 개입 시 진동 | ✅ ON |
| **휠 록업** | 바퀴 잠김 진동 | ✅ ON |
| **브레이크 임계값** | 100% 브레이크 진동 | ✅ ON |

### 이펙트 분배 (브레이크 vs 스로틀)

**브레이크 (mBooster 메인)**:
- ✅ ABS
- ✅ TC
- ✅ 휠 록업
- ✅ 브레이크 임계값
- ❌ G-포스 OFF
- ❌ 노면 질감 OFF

**스로틀 (mBooster 2번째 추가 시)**:
- ✅ 엔진 바이브레이션
- ✅ 노면 질감
- ✅ G-포스
- ✅ TC

**결론**: 브레이크는 정밀 모듈레이션 우선, 불필요한 움직임 제거

### 스로틀용 mBooster 추가 구매 검토

- **가격**: 80~90만원
- **체감**: CRP2 스로틀로도 충분하다는 평 다수
- **추천**: 같은 예산으로 모션하우스 2UN 등 다른 업그레이드가 체감 더 큼

### MOZA Pit House 베타 이슈

**주요 이슈** (v1.3.8.26~27):
- Pit House 베타 ↔ SimHub 간 **햅틱 충돌**
- 브레이크 임계값 진동 불안정 (100% 밟아도 간헐적)
- 시프트 햅틱 간헐적 작동 (R3/R9 보고)

**해결책**:
1. **G-포스 이펙트 OFF** (일부 해결)
2. **v1.3.7.2 릴리즈로 롤백** (완전 해결)

**Racing Lab**:
- R21 Ultra / R25 Ultra + mBooster 전용
- R9/R12 다음 달 지원 예정
- 타사 휠베이스 미지원

---

## 20. SimuCUBE 2 Pro 설치 및 마운팅

### SC2 Pro vs MOZA R25 Ultra 비교

| 항목 | MOZA R25 Ultra | SC2 Pro | SC3 Pro |
|---|---|---|---|
| **텔레메트리 이펙트** | ✅ (Pit House) | ❌ (하드웨어 한계) | ✅ (Tuner 3.0) |
| **패스스루 DIY** | ❌ | ✅ | ❌ (LightBridge) |
| **FFB 순수성** | 좋음 | 업계 최고급 | 업계 최고급+ |
| **가격** | 보유 중 | ~100만원 (중고) | ~200만원+ |

### SC2 Pro 텔레메트리 이펙트 없음 (공식 확인)

**Granite Devices 개발자 Mika 답변**:
- SC2 마이크로컨트롤러 **메모리/성능 한계**
- USB ↔ 서보 드라이브 통신 속도 부족
- **약속도 일정도 없음** → SC3 전용 기능

**실차 GT3 변속 충격**:
- 스티어링 휠 자체엔 거의 안 옴 (파워스티어링 분리)
- 등/엉덩이(시트), 발(페달), 몸 전체(관성)로 느낌
- SimHub + 햅틱 장비(P2000, 심매직)로 보완이 실차에 더 가까움

### 설치 순서

1. **USB 연결** (PC 본체 뒷면 직접)
2. **Tuner 3.0 실행** → 펌웨어 업데이트
3. **E-Stop(비상정지) 버튼** 연결 확인
4. **High Torque Mode 활성화** (10초 카운트다운)
5. **센터 캘리브레이션** → "Set permanent wheel center" 선택
6. **FFB 프로파일 생성**

### FFB 설정 (권장)

- Tuner 100% × 인게임 40% = **10Nm**
- 추천: 인게임 **45%** (11.25Nm)

### 볼트/마운팅 규격

#### SC2 Pro 전면 마운팅

| 항목 | 규격 |
|---|---|
| **볼트** | 니켈 고장력 M8 × 30mm 캡스크류 4개 |
| **와셔** | 스텐 M8 플랫 4개 + 스프링 4개 |
| **토크** (알루미늄) | 20~25Nm |
| **토크** (SCM 접시머리 12.9) | 30~35Nm (알루미늄 25~30Nm) |

#### Simucube Premium Torque Off 버튼

- **홀**: M4 관통홀 (나사산 없음)
- **볼트**: SCM M4 × 30mm 2개 + M4 T슬롯 너트

#### Ascher Racing 8" Dashboard

- 대시보드 → 마운팅 플레이트: **M4** 볼트
- 마운팅 플레이트 → SC2 Pro: **M8 × 45mm**
- 볼트/와셔/스페이서 **전부 동봉**

#### SimCore UM1-ALN

- 프로파일 쪽: **M8** 볼트 + T슬롯 너트
- 안쪽 2홀: **M5 또는 M6** (실측 필요)

#### 볼트 재질 순위

**SCM (12.9등급)** > 고장력 니켈 > 스텐 > 일반

---

## 21. Ascher Racing 8" Dashboard

### 주문 정보

| 항목 | 값 |
|---|---|
| **주문번호** | #26000004705 |
| **가격** | €448.36 (약 78만원) |
| **배송** | FedEx Priority (€50) |
| **할인** | BoostedMedia 코드 -€20.97 |
| **관부가세 포함** | 약 85~90만원 |
| **담당** | Dominik Diener (KW automotive GmbH) |

### 제품 특징

- **사이즈**: 8인치
- **LED**: 26개
- **연결**: USB-C
- **SimHub 인식**: "Ascher Racing 8" Dashboard" 전용 디바이스 (Vocore 아님)
- **DNR 호환**: DNR Endurance 대시보드 **Wide(7.8") 버전 권장** (화면 잘림 방지)
- **마운팅**: Simucube 마운팅 플레이트 동봉

### 주문 내역 미표시 이슈

- 공식 홈페이지 계정에서 주문 안 보임
- 결제/발송은 정상 처리
- 계정 연동 문의 메일 발송

---

## 22. 바레인 서킷 가이드

### 서킷 특성

- **길이**: 5.412km
- **코너**: 15개
- **방향**: 시계 방향
- **성격**: **스톱 앤 고** (브레이킹이 핵심)
- **목표 랩타임**: 2:05~2:10 (LMGT3)

### 핵심 코너

**T8 (저속 좌회전)**:
- 긴 직선 진입 전
- **탈출 속도 극대화** 우선

**T14 (중속 우회전)**:
- 메인 스트레이트 진입
- **가장 중요한 코너**
- 출구 트랙션 = 랩타임 80% 결정

### 공략 포인트

- T8 + T14 두 코너가 랩타임의 **80%** 결정
- 나머지 코너는 실수 없이 안정적으로
- 스톱 앤 고 → 브레이크 포인트 정확도 필수

---

## 23. iRacing 초기 설정

### 브레이크 캘리브레이션

- **축 반전 (Invert)** 필수
- Options → Controls → Pedals

### 콕핏 카메라 조정

**방법 1**: 세션 화면에서
- **Ctrl + F12** → 카메라 조정 모드
- **Ctrl + [** / **Ctrl + ]** → 높이 조정

**방법 2**: 드라이버 블랙박스
- **CamCockpit** 탭
- **Y값** (앞뒤), **Z값** (높이) 조정
- **Save Car** 필수

### 그래픽 설정

- **Motion Blur: 0** (경쟁용 필수)

### 초기 랩타임 기록

- 이몰라 LMGT3 포르쉐: **1:46.680** (LMU 대비)

---

## 24. LMU 트리플 모니터 Config_DX11.ini 상세

### Nvidia Surround 없이 설정

**파일 경로**: `Documents\Le Mans Ultimate\UserData\[YourName]\Config_DX11.ini`

```ini
VideoResW=7680
VideoResH=1440
WindowedMode=1
Borderless=0
SubViews=2
UseSubViewParams=2
CustomVidRes=(7680, 1440)
ViewParams=(0.709, 0.399, 0.700, 0.000, 0.020)
LeftView=(0.709, 0.399, 0.700, 45.000, 0.020)
RightView=(0.709, 0.399, 0.700, 65.000, 0.020)
```

### 7680×1440 해상도 안 뜨는 문제

**해결책**:
1. **Nvidia 제어판** → 디스플레이 → 해상도 변경
2. **사용자 지정...** 클릭 (Surround 아님!)
3. **7680×1440** 등록
4. LMU에서 인식 가능

### 왼쪽 모니터 하단 빈틈

**원인**: Windows 디스플레이 배치 문제

**해결**:
- 윈도우 설정 → 디스플레이
- 3개 모니터 **상단/하단 라인 정확히 일치**시키기

---

## 25. 주변기기 설정

### Stream Deck + vJoy

**작동 안 됨**:
- vJoy 단독 플러그인

**정상 작동**:
- **SimHub Control Mapper** 경유
- 스트림덱 → SimHub Control Mapper → vJoy → 게임

### USB 유전원 허브 (ORICO 7포트)

**전원 스펙**:
- DC 12V / 3A (36W)
- 배럴잭: 외경 5.5mm, 내경 2.1~2.5mm

**증상**: DDU 인식 불량/끊김

**원인**: 전원 용량 부족

**해결**: **12V/3A 어댑터로 교체**

### Nvidia 오버레이 설정

**단축키**:
- **Alt + R**: 성능 오버레이 토글
- **Alt + Shift + R**: 표시 모드 순환 (전체 → 간소 → FPS만)

**설정**:
- Alt + Z → Settings → Statistics → Configure heads up display

**주의**:
- **Game Filters 끄기 권장** (GPU 성능 최대 15% 저하 방지)

---

## 26. 레이스 결과 기록

### 현재 레이팅

- **DR**: Bronze 3
- **SR**: Gold 1 → **Platinum 목표**

### 르망 뮬산 (시케인 없음)

| 항목 | 값 |
|---|---|
| 순위 | **P6** (피트 출발) |
| 베스트 랩 | **3:47.232** |
| SR | **+12.6** |
| DR | +4.5 |
| 전략 | 피트 출발 → 1랩 사고 회피 (SR 파밍) |

### 후지

| 항목 | 값 |
|---|---|
| 순위 | **P9** (P12→P9 상승) |
| 베스트 랩 | **1:43.949** |
| SR | **+19.3** |
| DR | +2.2 |
| 실차 대비 | WEC #92 퀄리 1:40.414 대비 **+3.5초** |

### 몬자

| 항목 | 값 |
|---|---|
| 순위 | **P12** (P10→P12 하락) |
| 베스트 랩 | **1:41.594** |
| SR | **+18.9** |
| DR | -0.6 |
| 필드 | 1:41대 밀집, 최빠 대비 0.3초 차이 |

---

## 27. 하이퍼카 / 포지션

### 시트 포지션 비교

| 카테고리 | 시트백 각도 | 핸들 높이 |
|---|---|---|
| **F1** | 60~70도 눕힘 | 이마 이상 |
| **하이퍼카** | 40~50도 눕힘 | 눈~이마 |
| **GT3** | 15~25도 눕힘 | 턱~입 |

### 권장

- **버킷시트**: 틸트 조절만 가능
- **주로 LMGT3**: GT3 포지션 고정 추천

### MGU (하이퍼카)

- **MGU (Motor Generator Unit)**: 하이퍼카 하이브리드 시스템
- **기능**:
  - 브레이킹 시: 회생 발전
  - 가속 시: 전기 모터 부스트

---

## 28. WEC 2025 실차 퀄리파잉 랩타임

### Porsche #92 (911 GT3 R)

| 트랙 | 랩타임 |
|---|---|
| 후지 | **1:40.414** |
| 스파 | **2:19.223** |
| 이몰라 (2026) | **1:43.093** |

**활용**: 본인 페이스 대비 분석 기준

---

## 29. 용어 사전

| 용어 | 설명 |
|---|---|
| **코스팅 (Coasting)** | 스로틀도 브레이크도 안 밟는 무입력 구간 |
| **오버슈트 (Overshoot)** | 브레이킹 부족으로 코너를 지나치는 것 |
| **노즈 (Nose)** | 차의 앞부분 |
| **플로잉 (Flowing)** | 자연스럽게 이어지는 중~고속 연속 코너 |
| **에이펙스 (Apex)** | 코너의 정점 (가장 안쪽 지점) |
| **트레일 브레이킹 (Trail Braking)** | 코너 진입하면서 브레이크를 서서히 풀어주는 기법 |
| **스톱 앤 고 (Stop and Go)** | 저속 코너가 많은 서킷 성격 (바레인 등) |
| **슬립스트림 (Slipstream)** | 앞차 뒤에서 공기저항 감소로 속도 증가 |

---

## 30. 하이퍼카 배터리 관리 (LMH/LMDh)

### LMH vs LMDh 차이

| 항목 | LMH | LMDh |
|---|---|---|
| **MGU 출력** | 200 kW (자유 설계) | 50 kW (통제 스펙) |
| **위치** | 전륜 or 후륜 (자유) | 후륜 전용 |
| **Regen 최대** | 200 kW | 170 kW |
| **Motor Map 범위** | 40~200 kW | 20~150 kW |
| **배터리 권장 밴드** | 75~85% | 70~80% |
| **예산 (실차)** | €30~60M/년 | €20~40M/년 |

**르망 하이퍼카 차량 (게임 기준)**:

**LMH**:
- Toyota GR010 Hybrid
- Ferrari 499P
- Peugeot 9X8
- Aston Martin Valkyrie AMR-LMH
- Lamborghini SC63 (2024~)

**LMDh**:
- Porsche 963
- BMW M Hybrid V8
- Cadillac V-Series.R
- Alpine A424
- Genesis GMR-001 Hybrid (2025~)

### 배터리 100% 문제

**증상**:
```
배터리 100% 도달
    ↓
MGU 회생 중단 (뒷바퀴, LMDh 기준)
    ↓
브레이크 힘 앞바퀴만 집중 (65%+ Front)
    ↓
⚠️ 앞바퀴 락업 → 스핀/충돌 ⚠️
```

**예방**: 레이스 시작부터 Motor Map 높게 설정 (배터리 방전)

### 포메이션 랩 전략

#### 실제 WEC vs 게임 차이

| 항목 | 실제 WEC/IMSA | LMU (게임) |
|---|---|---|
| **포메이션 랩** | 2~3랩 (10~15분) | 0.5~1랩 (1~2분) |
| **배터리 방전 시간** | ✅ 충분 | ❌ 부족 |
| **전략** | 포메이션 중 Motor Map 최대 | **그리드부터 Motor Map 최대** |
| **T1 배터리 목표** | 80% | 80~85% |

#### 실전 전략 (LMU 게임)

**스프린트 레이스 (1시간 이하)**:

```
[그리드 정렬 중] (30~60초)
  Motor Map: 100~150 kW (최대)
  Regen: 최대 (LMH 200kW / LMDh 170kW)
  배터리: 100% → 95%

[포메이션 랩] (1분)
  Motor Map: 최대 유지
  배터리: 95% → 80~85%

[T1 브레이킹]
  배터리: 80~85%
  MGU 회생 정상 작동 ✅
  브레이크 바이어스 안정 ✅

[T1 탈출 후 즉시]
  Motor Map: 25~40 kW로 낮춤
  목표: 배터리 70~80% 밴드 진입
```

**중요**: 첫 코너 돌기 전까지는 무조건 Motor Map 높게 유지!

### 배터리 관리 기본

#### 배터리 밴드별 특징

| 배터리 % | 상태 | 특징 |
|---|---|---|
| **95~100%** | ⚠️ 위험 | 100% 도달 → 브레이크 락업 위험 |
| **70~90%** | ✅ **이상적** | MGU 자유롭게 사용 가능 |
| **50~70%** | ⚠️ 보수적 | 직선에서 부스트 아껴야 함 |
| **40% 이하** | ❌ 손해 | MGU 거의 못 씀 → 랩타임 손실 |

#### 평균 목표: 70~80%

**스위트 스팟**: **75%** 전후

### 레이스별 배터리 전략

#### 스프린트 (1시간 이하)

**목표 밴드**: 70~85%

**타임라인**:
```
랩 1: Motor Map 최대 (100~150kW)
      배터리 100% → 80%

랩 2~끝-5: Motor Map 25~40kW
           배터리 70~85% 유지

끝 5랩: Motor Map 최대
        배터리 완전 소진 (속도 최대화)
```

**이유**: 연료 여유 있음, MGU 적극 활용

#### 장거리 (6시간)

**목표 밴드**: 60~75%

**전략**:
- Motor Map 보수적 사용 (20~40kW)
- 연료 절약이 배터리보다 중요
- Regen은 여전히 최대 유지

### Motor Map 조절 기준

#### 배터리 85% 이상

```
→ Motor Map +10~20kW (방전)
```

#### 배터리 60% 이하

```
→ Motor Map -10kW (충전)
```

#### 직선 진입 전

**배터리 70% 이상**: MGU 부스트 적극 사용
**배터리 60% 이하**: 엔진만 사용, 부스트 절약

### 차량별 권장 설정

#### LMH (200kW)

**목표 밴드**: 75~85%

**Motor Map**:
- 스프린트: 40~100kW
- 장거리: 40~80kW

**특징**: 출력 커서 배터리 빨리 소진, 적극적 관리 필요

#### LMDh (50kW)

**목표 밴드**: 70~80%

**Motor Map**:
- 스프린트: 20~50kW
- 장거리: 20~40kW

**특징**: 출력 작아서 관리 쉬움, 안정적 운용

### 트랙별 배터리 전략

#### 긴 직선 많음 (르망, 몬자)

**권장 밴드**: 75~85%

**이유**: MGU 부스트가 직선 속도에 큰 영향

**Motor Map**: 중간~높게 (직선 전 충분한 배터리 확보)

#### 스톱 앤 고 (바레인, 스파)

**권장 밴드**: 65~75%

**이유**: 브레이킹 많아서 회생 기회 많음

**Motor Map**: 낮게 유지 (자연스럽게 충전됨)

#### 헤어핀 많음 (후지, 훈가로링)

**권장 밴드**: 70~80%

**이유**: 회생 기회 많고, 직선 짧아서 밸런스 유지

**Motor Map**: 중간값 유지

### Regen Rate 설정

**기본 원칙**: **항상 최대 유지**

| 클래스 | Regen 설정 | 변경 여부 |
|---|---|---|
| **LMH** | 200 kW | ❌ 건드리지 마세요 |
| **LMDh** | 170 kW | ❌ 건드리지 마세요 |

**이유**:
- 최대 에너지 회생
- 브레이킹마다 배터리 충전 최대화
- Motor Map으로만 배터리 조절

**예외 상황**: 없음 (스프린트/장거리 무관하게 항상 최대)

### 실전 팁

#### 1. 포메이션 랩 체크리스트

```
✅ Motor Map 최대로 설정 (100~150kW)
✅ Regen 최대 확인 (변경 금지)
✅ T1 전 배터리 85% 이하 확인
✅ T1 탈출 후 Motor Map 낮춤 (25~40kW)
```

#### 2. 레이스 중 배터리 모니터링

```
배터리 90% 이상: Motor Map +10~20kW
배터리 70~90%: 유지
배터리 60% 이하: Motor Map -10kW
```

#### 3. 마지막 5랩

```
Motor Map 최대 (100~200kW)
배터리 완전 소진
최대 속도로 피니시
```

### 출처

- [Coach Dave Academy - Hypercar Electric Motor Maps](https://coachdaveacademy.com/tutorials/hypercar-electric-motor-maps-in-le-mans-ultimate-explained/)
- [Traxion.gg - LMU Hypercar Braking Guide](https://traxion.gg/le-mans-ultimate-how-to-master-hypercar-braking/)
- [trophi.ai - LMU Hypercar Braking Guide](https://www.trophi.ai/post/le-mans-ultimate-hypercar-braking-guide/)
- [WEC Official Regulations](https://www.fiawec.com/en/page/regulations-1)

---

## 31. 하이퍼카 브레이킹 물리 & 실제 vs 게임

### 다운포스와 브레이킹의 관계

**속도별 브레이킹 특성**:
```
고속 (300km/h+)
├─ 다운포스: 최대
├─ 차가 지면에 눌림 (공기역학적 그립)
└─ 브레이크 100% 밟아도 락업 안 됨 ✅

중속 (200km/h)
├─ 다운포스: 감소 중
├─ 공기역학적 그립 줄어듦
└─ 브레이크 압력 조절 필요 ⚠️

저속 (100km/h)
├─ 다운포스: 거의 없음
├─ 타이어 기계적 그립만 남음
└─ 휠 락업 매우 쉬움 ❌
```

### Brake Migration (브레이크 마이그레이션)

**작동 원리**:
```
브레이크 페달 100% 압력 감지
    ↓
고속: 뒤쪽으로 바이어스 이동 (다운포스 활용)
    ↓
감속 중: 앞쪽으로 바이어스 자동 복귀
    ↓
저속: 안전한 바이어스로 복귀 (락업 방지)
```

**설정값** (LMU):
- 범위: 0 (꺼짐) ~ 2.5 (최대)
- 단위: 0.5씩 증가
- 추천: 1.0~1.5 (트랙 따라 다름)

**왜 필요한가?**
- 300km/h: 브레이크 바이어스 48% (뒤쪽) → 다운포스 활용
- 100km/h: 브레이크 바이어스 54% (앞쪽) → 락업 방지
- GT3에는 없는 기술!

### MGU 회생 브레이킹

**LMDh (예: Porsche 963)**:
```
기계식 브레이크 (디스크)
    +
MGU 회생 (후륜 180kW)
    +
엔진 브레이킹
    =
총 제동력
```

**LMH (예: Ferrari 499P)**:
```
기계식 브레이크 (디스크)
    +
MGU 회생 (전륜 또는 후륜 200kW)
    +
엔진 브레이킹
    =
총 제동력
```

**배터리 100% 문제**:
```
배터리 100% → MGU 회생 불가
    ↓
후륜 제동력 급감 (LMDh 기준 180kW 손실)
    ↓
브레이크 바이어스 자동으로 앞으로 이동
    ↓
BUT 페달 압력 똑같으면 전륜 과부하 → 락업
```

### 하이퍼카 vs GT3 브레이킹 차이

| 항목 | 하이퍼카 (LMH/LMDh) | GT3 |
|------|-------------------|-----|
| **다운포스** | 매우 큼 (4:1 비율) | 적당 |
| **초반 브레이크 압력** | **85-95%** (실제) | 70-85% |
| **블리딩 오프** | 급격히 줄임 | 완만하게 |
| **Brake Migration** | ✅ 있음 | ❌ 없음 |
| **ABS** | ❌ 없음 | ✅ 있음 |
| **브레이크 바이어스** | 48-52% (속도 의존) | 54-58% |
| **페달 감각** | 초반 딱딱 → 중간 부드럽게 | 균일 |

**브레이킹 테크닉 차이**:

GT3:
```
100m: 브레이크 70% → 50m: 85% → 에이펙스: 50% → 서서히 풀기
```

하이퍼카 (실제):
```
100m: 브레이크 90-95% → 50m: 급격히 70% → 에이펙스: 30-40% → 부드럽게 풀기
```

**핵심**: 하이퍼카는 **"쾅 → 슥"** / GT3는 **"꾹 → 쭉"**

### 실제 프로 드라이버 브레이킹 (중요!)

**왜 온보드에서 100% 안 보이나?**

1. **브레이크는 "퍼센티지"가 아님**
   - F1/WEC 텔레메트리: bar (압력 단위) 사용
   - "100%"가 무엇인지 정의 불가능

2. **실제 프로 드라이버 세팅**:
   ```
   최대 페달력의 80%를 "게임 내 100%"로 설정
       ↓
   드라이버가 "매우 세게" 밟으면 게임에서 100%
       ↓
   실제로는 85-95% 범위에서 운용
       ↓
   나머지 5-20%는 비상/여유분
   ```

3. **왜 100% 안 밟나?**
   - 트레일 브레이킹 불가능 (압력 조절 여유 필요)
   - 페달 감각 유지 (바닥 닿으면 조절 불가)
   - 비상 상황 대비

**실제 온보드 브레이크 압력**:

| 구간 | 시뮬 표시 | 실제 페달 압력 |
|------|---------|-------------|
| 초반 강타 | 95-100% | 80-90% |
| 유지 | 80-90% | 70-80% |
| 트레일 브레이크 | 60-40% | 50-35% |
| 릴리스 | 20-0% | 15-0% |

### Brake Migration 설정 가이드

| 트랙 특성 | Migration 설정 | 이유 |
|---------|--------------|------|
| **긴 직선** (르망, 몬자) | 1.5~2.0 | 고속 다운포스 최대 활용 |
| **중속 코너 많음** (스파) | 1.0~1.5 | 균형 |
| **스톱 앤 고** (바레인) | 0.5~1.0 | 저속 안정성 우선 |

### 출처

- [Le Mans Ultimate: How to master Hypercar braking | Traxion](https://traxion.gg/le-mans-ultimate-how-to-master-hypercar-braking/)
- [Point 'Brake': Porsche's 963 hypercar braking system](https://www.motorsport.com/lemans/news/point-brake-the-complexities-behind-porsches-963-hypercar-braking-system/10731976/)
- [Everything You Need To Know About Brake Migration](https://www.overtake.gg/news/guide-to-brake-migration-in-le-mans-ultimate-hypercars.3592/)
- [How to Set up your Pedals for iRacing - DRIVER61](https://driver61.com/sim-racing/how-to-set-up-your-pedals-for-iracing/)

---

## 32. VI-RSR SimHub LED 세팅 가이드

> **상태**: VI-RSR 도착 예정 (2026년 7월 초)  
> **현재**: DNR LED 프로필 요청 중 (2026년 6월 19일)

### SimHub LED 개수 확인 방법

#### 방법 1: Devices 탭 (가장 쉬움)

```
1. SimHub 실행
2. 좌측 메뉴 → "Devices" 클릭
3. "Velocitas..." 또는 "VI-RSR" 찾기
4. 클릭 → 우측에 "LEDs: __개" 표시
```

#### 방법 2: Settings → Custom Serial Devices

```
1. SimHub → Settings
2. "Custom Serial Devices" 탭
3. VI-RSR 찾기 → "Edit"
4. "RGB LEDs count" 확인
```

**Velocitas 공식 스펙**: 26개 (shift LEDs)

### 기본 RPM 프로그레스 바 설정

**설정 방법**:
```
1. Devices → VI-RSR → LEDs 섹션
2. "Use as progress bar" 체크
3. Data source: "CurrentRPM"
4. Minimum value: 0
5. Maximum value: [MaxRPM]
6. Style: "Progressive"
```

**색상 설정** (GT3/하이퍼카 표준):
```
0-70%:   🟢 Green  RGB(0, 255, 0)
70-85%:  🟡 Yellow RGB(255, 255, 0)
85-95%:  🟠 Orange RGB(255, 165, 0)
95-100%: 🔴 Red    RGB(255, 0, 0)
100%+:   🔴 Red Blink (리미터)
```

### 빠른 세팅 (복붙용)

```
Data Source: [CurrentRPM]
Min: 0
Max: [MaxRPM]
Style: Progressive
Colors:
  - 0%: Green
  - 70%: Yellow
  - 85%: Orange
  - 95%: Red
  - 100%: Red Blink
```

### 차량별 RPM 자동 인식

SimHub는 게임별로 MaxRPM 자동 인식:
```
LMU Porsche 963: ~8,500 rpm
iRacing 911 GT3 R: ~9,000 rpm
시프트 포인트: MaxRPM의 95-98%
```

### 추가 기능 (선택)

**TC/ABS 작동 시 파란색**:
```
Condition: [TractionControlActive] = 1
Action: Flash Blue (모든 LED)
Color: RGB(0, 100, 255)
```

**기어 표시** (중앙 LED):
```
중앙 LED를 기어 인디케이터로:
P/R/N: Red
1-3: Green
4-6: Yellow
7-8: Red
```

### VI-RSR 버튼 매핑 (하이퍼카 전용)

**인코더 8개 활용**:

| 인코더 | 기능 | 하이퍼카 필수도 | GT3 |
|--------|------|----------------|-----|
| 1 | Motor Map +/- | ⭐⭐⭐ 필수 | - |
| 2 | Brake Migration +/- | ⭐⭐⭐ 필수 | - |
| 3 | Brake Bias +/- | ⭐⭐⭐ 필수 | ⭐⭐⭐ |
| 4 | TC +/- | ⭐⭐ 자주 | ⭐⭐ |
| 5 | ABS +/- | ⭐⭐ 자주 | ⭐⭐ |
| 6 | Regen +/- | ⭐ 가끔 | - |
| 7 | Engine Map +/- | ⭐ 가끔 | ⭐ |
| 8 | 여유 (타이어/연료) | - | ⭐ |

**GT3 모드**: 인코더 6개면 충분 (Motor Map/Regen 불필요)

### DNR LED 프로필 요청 상태

**요청일**: 2026년 6월 19일  
**채널**: DNR Patreon Discord #feature-requests  
**내용**: VI-RSR LED 프로필 추가 요청  
**예상**: 1-2주 내 업데이트 또는 커스텀 프로필 가이드 제공

---

## 33. Velocitas Imperium VI-RSR 종합 가이드

> **상태**: 2026년 4월 구매 (중고), 2026년 7월 초 도착 예정  
> **현재**: 유튜버 보유 중  
> **펌웨어**: V0.1.6.2 다운로드 완료

### 구매 정보

| 항목 | 내용 |
|------|------|
| **제품명** | Velocitas Imperium VI-RSR (Porsche 911 RSR 레플리카) |
| **구매일** | 2026년 4월 |
| **구매 경로** | 중고 (조립 완료품) |
| **구매가** | ₩1,450,000 |
| **이전 휠 판매** | Conspit MAX01 (₩750,000) |
| **실질 비용** | ₩700,000 |
| **도착 예정** | 2026년 7월 초 |
| **제조사** | Velocitas Imperium (이탈리아) |
| **공식 홈페이지** | velocitasimperium.com |

### 스펙 및 특징

**입력 장치** (총 90개):
- **버튼**: 10개
- **인코더**: 8개 (하이퍼카 최적화)
- **펑키 스위치**: 2개
- **패들**: 6개 (4개 시프터 + 2개 클러치)

**LED**:
- **총 86개**
  - LED 1-16: RPM 바 + 텔레메트리
  - LED 17-36: 좌측 버튼 백라이트 (버튼당 4개)
  - LED 37-56: 우측 버튼 백라이트 (버튼당 4개)
  - LED 57-86: 인코더 백라이트 (인코더당 6개, Multilink 12개)

**디스플레이**:
- **VoCore 5인치** (480×854, USB-C)
- SimHub 네이티브 지원

**연결**:
- USB-C (Weipu 코일 케이블 포함)
- SimuCUBE 호환 (6×70mm 표준 QR)

**빌드 품질**:
- 7075 알루미늄 전면 플레이트
- 카본 파이버 시프터/클러치 패들
- 실크스크린 강화유리 디스플레이

---

### Assembly Guide 요약 (Pro Kit)

#### 필요한 도구
- 핵스 키: 1.5mm, 2mm, 3mm
- 10mm 스패너 튜브
- 집게
- 전기 테이프

#### 조립 순서

**1. QR 장착** (SimuCUBE):
- M5×18mm Countersunk 나사 (3-6개)
- M5 너트 (3-6개)
- 나일론 Grub 나사 M5×35mm (3개, 정렬용)
- 권장 오프셋: 0mm (실차 느낌 재현)

**2. 인코더 스티커** (먼저 부착!):
- 썸 인코더 스티커는 조립 전 부착
- 방향 주의: 빨강/노랑 한쪽, 보라/파랑 반대쪽
- 팁: 숫자 6/문자 F부터 시작해서 양쪽으로

**3. 후면 커넥터**:
- Weipu SA 시리즈 12mm 커넥터
- 플랫 사이드로 고정
- 와이어를 아래로 약간 구부림

**4. 사이드 인코더**:
- 증분 인코더 + PCB (4개)
- 10mm 스패너 또는 플라이어로 고정
- 핀 방향 주의 (아래쪽 향함)

**5. 시프터 + 클러치**:
- M3×8mm 버튼 헤드 나사 (24개)
- 구성: 상단 4개 시프터 + 하단 2개 클러치
- 3-wire 케이블 먼저 연결 후 장착
- Threadlocker 권장 (풀림 방지)

**6. Secondary PCB**:
- M3×8mm 버튼 헤드 나사 (4개)
- 케이블 라우팅 주의 (끼임 방지)
- PCB 실크스크린 참조 (커넥터 표시)

**7. 메인 PCB 연결**:
- 디스플레이: Type-C 또는 JST ZH 4핀
- USB: JST ZH 6핀
- Pogo 핀 주의!

**8. 디스플레이 설치**:
- VoCore 5인치
- 먼지 제거 후 보호막 제거
- 스크린 홀더로 고정 (M3×8mm 3개)
- 중앙 정렬 확인 후 나사 조임
- 전기 테이프로 고정

**9. 버튼 캡 & 가드**:
- 버튼 캡 먼저 삽입 (사각 구멍 정렬)
- 버튼 가드 고정 (M3×8mm 4개)

**10. 전후면 결합**:
- M3×16mm 버튼 헤드 나사 (10개)
- 와이어 끼임 주의

**11. 스티커 & 노브**:
- Light blocker (하단 좌측 인코더)
- 메인 스티커 (먼지 제거 필수)
- Funky 스위치 노브 (M3×3mm Grub 나사)
- 전면 인코더 노브 (M3×10mm Grub 나사)
- 버튼 스티커 (자유 배치)

---

### User Manual 요약

#### SimHub 설정

**1. 디바이스 추가**:
```
SimHub → Devices → Add new device → VI-RSR 선택
```

**2. VoCore 드라이버**:
- SimHub 설치 시 VoCore 드라이버 함께 설치
- 자동 인식됨

**3. 대시보드 설치**:
- VI-RSR 전용 대시 다운로드 (Discord/제품 페이지)
- `.simhubdash` 파일 더블클릭
- Import 완료

**4. LED 프로필**:
- 기본 프로필: 자동 설치됨
- ATSR Evo 플러그인: 고급 사용자용 (30-40분 설정)

#### 펌웨어 업데이트

**파일**: `VI-RSR_V0.1.6.2.uf2` (다운로드 완료)

**절차**:
```
1. VI-RSR PC 연결
2. Multilink 인코더 → Position 6 (CAL)
3. 상단 두 버튼 동시에 누르기
   (정확한 위치: Discord 확인 필요)
4. USB 연결 해제 소리 들림
5. 'RPI-RP2' 폴더 자동 열림
6. .uf2 파일 드래그 앤 드롭
7. 자동 업데이트 (5-10초)
8. SimHub 재시작
```

**펌웨어 버전**:
- V0.1.0: 초기 버전
- V0.1.2: Multilink 버튼 변경 기능 추가
- **V0.1.6.2**: 최신 (추가 커스터마이징 + 안정성)

#### CAL 모드 설정

**진입**: Multilink 인코더 → Position 6

**설정 가능 항목**:

**PushPull (시프터 모드)**:
- 2 INPUT: 양쪽 시프터가 같은 2개 입력 (F1 스타일)
- 4 INPUT: 좌우 각 2개씩 총 4개 입력

**EncMode (인코더 모드)**:
- Absolute: 12개 포지션 (하이퍼카용)
- Incremental: +/- 회전 (일반용)
- 각 전면 인코더 개별 설정 가능

**SwapMode (Multilink 버튼 위치)**:
- DEFAULT: Funky 위쪽 버튼 사용
- SWAP: Funky 아래쪽 버튼 사용

**PresetMode (Bite Point 프리셋)**:
- 12개 프리셋 (각각 다른 Bite Point 저장)
- 프리셋 라벨 변경 가능

**BitePoint (바이트 포인트)**:
- 좌측 Funky: 1% 단위
- 우측 Funky: 10% 단위
- 예: 30% = 좌측 클러치가 우측의 30% 출력

**ClutchCAL (클러치 캘리브레이션)**:
- 버튼 5초 누름 → 캘리브레이션 모드
- 클러치 한 번 당김
- 버튼 다시 눌러 저장

#### LED 순서 (총 86개)

**RPM 바 (LED 1-16)**:
```
LED 1-16: RPM 프로그레스 바 + 텔레메트리
```

**좌측 버튼 (LED 17-36)**:
```
하단 버튼부터 시작, 각 버튼당 4개 LED
LED 17-20: 좌측 하단 1번 버튼
LED 21-24: 좌측 하단 2번 버튼
LED 25-28: 좌측 하단 3번 버튼
LED 29-32: 좌측 하단 4번 버튼
LED 33-36: 좌측 하단 5번 버튼
```

**우측 버튼 (LED 37-56)**:
```
하단 버튼부터 시작, 각 버튼당 4개 LED
LED 37-40: 우측 하단 1번 버튼
LED 41-44: 우측 하단 2번 버튼
LED 45-48: 우측 하단 3번 버튼
LED 49-52: 우측 하단 4번 버튼
LED 53-56: 우측 하단 5번 버튼
```

**인코더 (LED 57-86)**:
```
LED 57-62:  상단 우측 인코더 (6개)
LED 63-68:  중간 우측 인코더 (6개)
LED 69-74:  하단 우측 인코더 (6개)
LED 75-80:  상단 좌측 인코더 (6개)
LED 81-86:  하단 좌측 Multilink (6개)
LED 87-98:  Multilink 추가 (6개, 총 12개)
```

#### 대시보드 커스터마이징

**라벨 변경** (선택사항):

파일 위치:
```
C:\Program Files (x86)\SimHub\DashTemplates\VI-RSR\JavascriptExtensions
```

**FunctionKeys.js**:
- FN 키 라벨 (12개, 24개, 36개 지원)
- SimHub Control Mapper와 연동

**MultilinkLabels.js**:
- Multilink 12개 포지션 라벨

**VI-PresetLabels.js**:
- Preset 12개 라벨 (예: F1, F2, F3...)

**변경 후**:
- 파일 저장
- SimHub 재시작
- 대시보드 다시 로드

---

### 하이퍼카 인코더 매핑 (권장)

**Absolute 모드 설정** (CAL → EncMode):

| 인코더 | 하이퍼카 기능 | 필수도 | GT3 |
|--------|-------------|--------|-----|
| 1 | Motor Map +/- | ⭐⭐⭐ 필수 | - |
| 2 | Brake Migration +/- | ⭐⭐⭐ 필수 | - |
| 3 | Brake Bias +/- | ⭐⭐⭐ 필수 | ⭐⭐⭐ |
| 4 | TC +/- | ⭐⭐ 자주 | ⭐⭐ |
| 5 | ABS +/- | ⭐⭐ 자주 | ⭐⭐ |
| 6 | Regen +/- (LMH/LMDh) | ⭐ 가끔 | - |
| 7 | Engine Map +/- | ⭐ 가끔 | ⭐ |
| 8 | 여유 (타이어 압력/연료) | - | ⭐ |

**Absolute vs Incremental**:
- **Absolute**: 12개 고정 포지션 (하이퍼카 Motor Map 등)
- **Incremental**: 회전 방향 +/- (일반 설정)

---

### 트러블슈팅

#### 시프터 작동 안 함
**원인**: 홀 센서 자석 방향 잘못됨

**해결**:
1. 상단 자석 제거
2. 정상 작동 시프터와 비교
3. 서로 밀어내면 → 두 자석 모두 뒤집기

#### 사이드 인코더 작동 안 함
**원인**: 시프터와 인코더 커넥터 혼동

**해결**:
1. Input tester로 테스트
2. 같은 쪽 시프터도 안 되면 → 커넥터 바꿔 연결
3. Ground 채널 쇼트 가능성 (휠 프리징)

#### LED/화면 작동 안 함
**원인**: 플러그인/프로필 충돌

**해결**:
1. 원본 설정으로 복구
2. 써드파티 제공 업체에 문의
3. Discord 지원 티켓

---

### 구매 가격 비교 (참고)

| 옵션 | 가격 (€1 = ₩1,720) | 비고 |
|------|-------------------|------|
| **Pro Kit + VoCore** | ₩184-193만원 | 신품 (공홈) |
| **Essential Kit + 3D** | ₩131-167만원 | DIY 필요 |
| **그룹바이** | ₩113-155만원 | 대기 3-6개월 |
| **중고 (주호 구매)** | **₩145만원** | ✅ 조립 완료 |
| **실질 비용** | **₩70만원** | MAX01 판매 후 |

---

### 참고 자료

**공식 문서**:
- Assembly Guide: `/Users/jooho/Downloads/VI-RSR_Assembly_Guide.pdf`
- User Manual: `/Users/jooho/Downloads/VI-RSR_User_Manual.pdf`
- 펌웨어: `/Users/jooho/Downloads/VI-RSR_V0.1.6.2.uf2`

**커뮤니티**:
- Velocitas Imperium Discord
- Facebook: @VelocitasImperium
- Instagram: @velocitasimperium

**협력 업체**:
- Grayze Dynamics (독점 협업)
- Dan Suzuki (커뮤니티)

---

**끝.**

> 이 문서는 셋업 변경/업데이트에 따라 수정 필요.
> 본 셋팅 값은 합리적 출발점이며, 본인 트랙 테스트로 미세 조정 권장.
> 검증된 프로파일 (디스코드/유튜브) 비교 후 본인 손에 맞는 값으로 조정하는 것이 최선.
