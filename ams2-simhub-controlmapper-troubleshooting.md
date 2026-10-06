# AMS2 + SimHub ControlMapper 키 매핑 안 먹을 때

작성: 2026.10.06 / 상태: **주말 테스트 예정 (미해결)**

## 증상
- SimHub ControlMapper(vJoy)로 매핑한 버튼이 **Automobilista 2에서만** 인식 안 됨
- ACC · LMU · iRacing은 같은 세팅으로 정상 작동
- → vJoy 버전·SimHub 권한 문제 아님. AMS2(Madness 엔진) 쪽 문제

## 체크리스트 (이 순서로)

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
