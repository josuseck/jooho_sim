# AMS2 + SimHub ControlMapper 키 매핑 안 먹을 때

작성: 2026.10.06 / 상태: **주말 테스트 예정 (미해결)**

## 증상
- SimHub ControlMapper(vJoy)로 매핑한 버튼이 **Automobilista 2에서만** 인식 안 됨
- ACC · LMU · iRacing은 같은 세팅으로 정상 작동
- → vJoy 버전·SimHub 권한 문제 아님. AMS2(Madness 엔진) 쪽 문제

## 내 환경 (2026.10.07 정리)
- 스티어링 축: SimuCUBE 2 Pro / 페달 축: mBooster
- **림 버튼·패들은 전부 SimHub ControlMapper → vJoy 경유** (SimuCUBE 직결 림 아님)
- 매핑은 이미 Mapping Assistant(폰 QR)로 하고 있음 → LMU·ACC·iRacing 정상. 매핑 방식 자체는 문제 아님
- → AMS2만 안 되는 원인은 아래 **4개 중 하나**일 가능성 큼

## 주말 확인 순서 (좁힌 것)
| 순서 | 할 것 | 어디서 | 결과 |
|---|---|---|---|
| 1 | Steam 입력 비활성화 | Steam → AMS2 우클릭 → 속성 → 컨트롤러 | ☐ |
| 2 | 실행 순서: SimHub 먼저 → vJoy Monitor에서 버튼 들어오는지 확인 → AMS2 실행 | | ☐ |
| 3 | Control Scheme = **Custom** | AMS2 Options → Controls → 맨 위 Control Scheme | ☐ |
| 4 | 컨트롤 초기화 → 축 → 버튼 → **패들 맨 마지막** | Edit Assignments | ☐ |

**Control Scheme이란**: Keyboard/패드/Simucube/Fanatec 등 장비별 프리셋. Simucube 프리셋 고른 상태로 vJoy 버튼 추가하면 저장 안 되거나 재시작 때 프리셋 값으로 되돌아가는 사례 있음. Custom = 전부 수동, 덮어쓰기 없음.

## 전체 체크리스트 (원본)

| 순서 | 할 것 | 방법 | 결과 |
|---|---|---|---|
| 1 | **Steam Input 끄기** | Steam 라이브러리 → AMS2 우클릭 → 속성 → 컨트롤러 → "Steam 입력 비활성화" | ☐ |
| 2 | **실행 순서** | SimHub 먼저 → vJoy Monitor에서 버튼 들어오는지 확인 → 그 다음 AMS2 실행 (AMS2는 로딩 때 한 번만 장치 스캔) | ☐ |
| 3 | **패들은 맨 마지막에 매핑** | Madness 엔진 버그: 패들(기어) 먼저 매핑하면 이후 버튼 전부 인식 중단. 이미 패들 했으면 컨트롤 초기화 후 버튼부터 | ☐ |
| 4 | **Mapping Assistant로 매핑** | 게임 매핑 화면에서 휠 물리 버튼 누르지 말 것 (게임이 물리 장치를 vJoy보다 먼저 잡음). SimHub → Control Mapper → Mapping Assistant → QR로 폰 접속 → 폰 버튼 탭 | ☐ |
| 5 | **입력은 1초 안에 눌렀다 떼기** | 길게 누르면 "Multiple inputs detected" | ☐ |
| 6 | **Control Scheme = Custom** | Simucube 등 프리셋 선택 시 vJoy 추가 매핑이 저장 안 되는 경우 있음 | ☐ |
| 7 | USB 정리 | 비필수 USB 장치 제거, 휠은 허브 말고 메인보드 직결 | ☐ |

## 다른 게임도 안 될 때 (참고 — 현재 해당 없음)
- vJoy 버전: 구글 검색으로 받은 **2.2.2.0은 SimHub와 안 맞음** → SimHub 문서의 **2.1.9.1**로
- vJoy Config 버튼 수 **128**
- SimHub → Settings → **Run as administrator**
- 키보드 에뮬레이션은 게임 창 포커스일 때만 작동 → AMS2는 vJoy 방식 권장

## 최후 수단
- 아두이노 Pro Micro 브릿지(~$10)로 vJoy 우회 (AMS2에서 문제없이 작동 사례)
- AutoHotkey로 키 매크로

## 출처
- [GitHub SimHub #1792 — Simulate not recognized](https://github.com/SHWotever/SimHub/issues/1792)
- [Reiza 포럼 — SimHub control mapper](https://forum.reizastudios.com/threads/simhub-control-mapper.35823/)
- [Reiza 포럼 — Vjoy](https://forum.reizastudios.com/threads/vjoy.30846/)
- [Reiza 포럼 — Multiple inputs detected](https://forum.reizastudios.com/threads/multiple-inputs-detected-problem-when-trying-to-assign-controls.23712/)
- [note.com — vJoy + Control Mapper 가이드](https://note.com/hal_86_/n/nb2cc0157edf4?hl=en)
- [SimHub Wiki — Games config and troubleshooting](https://github.com/SHWotever/SimHub/wiki/SimHub-Basics----Games-config-and-troubleshooting)

## 테스트 결과 기록
- (주말 테스트 후 여기에 어떤 항목으로 해결됐는지 기록)

## 참고 — AMS2 DLC 보유 현황 (2026.10.07 구매)
- 본편 + Racin' USA + IMSA Track Pack + Endurance Pt1·2·3 + Lamborghini Pt1 + Premium Track Pack + Nürburgring 2025 (총 57,650원)
- Nürburgring 2025 레이아웃: Nordschleife / GP / 24h / Touristenfahrten
- 르망 트랙팩은 LMU로 대체, 안 삼
- 차 추가 검토: Historical Endurance Pt1 (2005 LMP1/LMP2/GT1/GT2 11대, 패들 2대·시퀀셜 9대 → 패들로 그냥 탐. Auto Blip·Auto Clutch ON 권장)
- 머스탱 GT3 휠(VPG Sim)은 가격 때문에 구매 안 함

---

# [같이 확인] mBOOSTER 센서 출력 비율 — 브레이크 일관성

작성: 2026.10.06 / 상태: **주말 확인 예정**

## 배경
- 커뮤니티 글: 홀센서(위치)+로드셀(힘) 혼합 출력 상태라 브레이크 % 들쭉날쭉 → 로드셀 100%로 바꾸니 일관성 회복
- 위치 센서는 자세·발 위치 따라 같은 힘에도 이동량이 달라져 출력 흔들림. 근육 기억은 "힘"이므로 힘 기준만 쓰는 게 맞음
- mBOOSTER도 압력 센서 + 위치 센서 둘 다 있고, Pit House에 비율 설정 있음

## 확인할 것
| 순서 | 할 것 | 결과 |
|---|---|---|
| 1 | Pit House → mBooster → 브레이크 설정 → **Sensor Output Ratio** 현재 값 확인 | ☐ (현재: ___ ) |
| 2 | **압력(Pressure/Force) 100%** 로 변경 | ☐ |
| 3 | Starting Force(데드존) / Ending Force(100% 도달 힘)로 커브 재조정 | ☐ |
| 4 | 후지 or 르망 프랙 몇 랩 돌려서 브레이크 % 트레이스 일관성 체크 | ☐ |

## 출처
- [MOZA mBooster Support](https://support.mozaracing.com/en/support/solutions/articles/70000672500-moza-mbooster-active-pedal-support)
- [simracingcockpit.gg 리뷰](https://simracingcockpit.gg/mbooster-review-mozas-new-active-pedal/)
- [simracerzone 리뷰](https://simracerzone.com/blogs/knowledge-base/moza-mbooster-active-pedal-review)
