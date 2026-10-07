# AMS2 숙소 PC 세팅 순서 — 한글패치 · 키매핑 · ZTA

작성: 2026.10.07 / 상태: **숙소 PC에서 진행 예정**

## 목적
- 본가 리그 없이 숙소 PC에서 AMS2 vJoy 키매핑 문제를 먼저 검증
- 한글패치 + ZTA(커리어 모드) + CrewChief 조합 세팅

## 순서

| 순서 | 할 것 | 확인할 것 | 결과 |
|---|---|---|---|
| 1 | AMS2 설치 (Steam) → 한 번 실행해서 정상 구동 | | ☐ |
| 2 | **한글패치** 설치 → 한글 런처로 실행 | 한글 나오는지. 이후 실행은 항상 `AMS2 Korean Launcher.exe` | ☐ |
| 3 | **키매핑** — Steam 입력 비활성화 → SimHub 먼저 실행 → vJoy Monitor 확인 → AMS2(한글 런처) → Control Scheme **Custom** → Mapping Assistant 폰으로 매핑 → 패들 맨 마지막 | 한글 런처로 실행해도 vJoy 먹는지. 저장 후 재시작해서 남아있는지 | ☐ |
| 4 | **ZTA** 설치 → AMS2 경로 지정 → 차/트랙 이미지 생성(몇 분) → 드라이버 생성 | ZTA에서 게임 실행 시 한글·키매핑 유지되는지 | ☐ |

## 다운로드

| 항목 | 파일 | 출처 |
|---|---|---|
| 한글패치 v0.88.1 | `AMS2.0.88.1.zip` (75 MB) | https://github.com/choi3724/AMS2_KR/releases/tag/v0.88.1 |
| ZTA v0.7.2 | `ZTA_0.7.2_x64-setup.exe` (9.6 MB) — **exe 하나만**. Source code zip은 소스라 불필요 | https://github.com/thingsbyjosh/zta-releases/releases/tag/v0.7.2 |

ZTA 체크섬 확인 (PowerShell): `Get-FileHash .\ZTA_0.7.2_x64-setup.exe -Algorithm SHA256` → `c1d8e98871939b7c43db17d214…` 로 시작하면 정상

## 한글패치 메모
- 비공식. 메뉴 텍스트 + 한글 폰트를 게임 아카이브에 덮어씀. 지원 빌드 V1.6.9.95 (Steam 빌드 24132163 / 25271800)
- 런처가 게임 파일 변경 감지 → 자동 재적용. v0.88.1은 매 실행마다 재적용 안내 뜨던 거 수정
- **AMS2 공식 업데이트 후**: 설치 프로그램에서 `제거 / 복구` → 새 버전 한글패치 재설치. 순서 틀리면 런칭 실패
- **Steam 파일 무결성 검사** 돌리면 한글패치 날아감 → 재설치
- README의 "CM"은 **AMS2 Content Manager**(모드 차·트랙 툴, bootfiles 수정) — 안 쓰므로 해당 없음. **CrewChief와는 무관** (공유메모리만 읽음, 게임 파일 안 건드림)

## ZTA 메모
- AMS2 커리어 모드 mod. 시대별 실제 시리즈·그리드, 계약·스폰서, 적응형 난이도. 싱글 전용
- 리버리는 Overrides 폴더에만 설치 → 한글패치(아카이브)와 영역 다름. 단 ZTA가 게임을 직접 실행하면 한글 런처를 안 거칠 수 있음 → 4번에서 확인
- 보유 DLC(Endurance·IMSA·Racin' USA·Premium Track·Nürburgring 2025) 많을수록 쓸 수 있는 시리즈 증가

## 숙소에서 검증 가능 / 불가
- 가능: Steam 입력 비활성화 효과, SimHub→AMS2 실행 순서, Control Scheme Custom 저장, vJoy 버전·버튼 128·관리자 권한
- 불가 (본가 리그 필요): 물리 림 USB와 vJoy 충돌, 패들 먼저 매핑 시 버튼 중단 버그
- 상세 체크리스트: `ams2-simhub-controlmapper-troubleshooting.md`

## 결과 기록
- 2026.10.07 3번 키매핑: vJoy 인식 OK. Steam 입력 비활성화 완료. Keyboard 스킴에서 메뉴 폭주(원인: vJoy 빈 축 → `ams2-simhub-controlmapper-troubleshooting.md` 참고). Controller 스킴 + vJoy 버튼은 정상. 본가에서 vJoy 축 제거 후 Custom 스킴으로 재검증 예정
