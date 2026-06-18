# 심레이싱 Claude Code 스킬

> SimuCUBE 2 Pro, mBooster, LMU/iRacing 종합 가이드

## 🚀 설치 방법 (다른 컴퓨터에서)

### 1단계: 스킬 파일 다운로드

```bash
# 방법 A: 직접 다운로드
curl -o ~/.claude/skills/레이싱.md https://raw.githubusercontent.com/josuseck/jooho_sim/main/claude-skills/레이싱.md

# 방법 B: 수동 다운로드
# 1. https://github.com/josuseck/jooho_sim/blob/main/claude-skills/레이싱.md
# 2. Raw 버튼 클릭
# 3. Cmd+S로 저장 → ~/.claude/skills/레이싱.md
```

### 2단계: 폴더 확인

```bash
# skills 폴더 없으면 생성
mkdir -p ~/.claude/skills

# 파일 확인
ls -la ~/.claude/skills/레이싱.md
```

### 3단계: 사용

1. **Claude Code 실행**
2. 대화창에 **"레이싱"** 입력
3. 심레이싱 가이드 기반으로 대화 시작!

---

## 📋 포함 내용

### 하드웨어 설정
- **SimuCUBE 2 Pro**: FFB 프로파일 (Porsche 911 GT3 R)
- **mBooster**: GT3 S-Curve 페달 설정
- **Sparco Pro 2000 QRT**: 시트 & 리그
- **Ascher Racing 8" DDU**: 대시보드

### 게임 설정
- **LMU (Le Mans Ultimate)**: 인게임 FFB, 차량 셋업
- **iRacing**: FFB Tester, 인카 컨트롤

### 트랙 공략
- **후지 클래식**: 1:39.317 (현재 베스트)
- **Le Mans**: 3:47.232, Porsche Curves 공략
- **바레인**: 스톱 앤 고 전략

### 업그레이드 로드맵
- **단기**: 9800X3D CPU, Pokornyi RALLY 림
- **중기**: Simucube ActivePedal Pro (175~190만원)
- **장기**: VR, Hypercar 림

### 트러블슈팅
- LMU 진동 이슈 (True Drive, lmuffb)
- iRacing 인카 컨트롤
- SimHub 텔레메트리

---

## 📁 전체 가이드

더 자세한 내용은 로컬 파일 참조:
- `~/.claude/simracing-setup-guide.md` (49KB 종합 가이드)
- `~/.claude/projects/-Users-jooho/memory/simracing.md` (메모리)

---

## 🔗 참고 링크

- **Simucube 디스코드**: https://discord.gg/simucube
- **DNR Patreon**: https://www.patreon.com/danielnewmanracing
- **OverTake.gg**: https://www.overtake.gg/downloads/categories/simhub-dashboards.110/
- **LMUFFB (LMU 진동 해결)**: https://github.com/coasting-nc/LMUFFB

---

## 💡 사용 예시

### 예시 1: FFB 설정 질문
```
사용자: 레이싱
Claude: 심레이싱 가이드를 불러왔습니다. 무엇을 도와드릴까요?
사용자: 후지에서 FFB가 너무 강한데 어떻게 줄여?
Claude: SimuCUBE 2 Pro 설정에서 Overall Strength를 50%에서 45%로...
```

### 예시 2: 트랙 공략
```
사용자: 레이싱
사용자: 후지 T16에서 시간 잃는데 어떻게 공략해?
Claude: T16 Panasonic Corner는 출구 트랙션이 가장 중요합니다...
```

### 예시 3: 하드웨어 조언
```
사용자: 레이싱
사용자: ActivePedal Pro 살까 말까 고민되는데?
Claude: 현재 예산은 175~190만원입니다. 햅틱 피드백 (ABS/TC)이...
```

---

## 🔄 업데이트

스킬 파일 업데이트:
```bash
# 최신 버전 다운로드
curl -o ~/.claude/skills/레이싱.md https://raw.githubusercontent.com/josuseck/jooho_sim/main/claude-skills/레이싱.md
```

---

## 📝 라이센스

개인 사용 목적. 심레이싱 커뮤니티 공유 환영.
