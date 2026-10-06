#!/bin/bash
# 레이싱 문서 ↔ 깃허브(josuseck/jooho_sim) 동기화
#   pull            깃허브 → 로컬 (레이싱 대화 시작 시)
#   push [메시지]   로컬 → 깃허브 ("정리" 시)
#   status          변경 파일·원격 미반영 커밋 확인
# 이 폴더는 레포의 스파스 체크아웃(레이싱 md + skills/레이싱.md + 이 스크립트만)
set -e
DIR="$HOME/Documents/claude/simracing"
SKILL="$HOME/.claude/skills/레이싱.md"
cd "$DIR"
export GIT_CONFIG_PARAMETERS="'core.quotepath=off'"

case "${1:-pull}" in
  pull)
    git pull -q --rebase --autostash origin main
    cp skills/레이싱.md "$SKILL"
    echo "동기화 완료 — $(git log -1 --format='%h %s (%cr)')"
    echo "변경 파일:"; git diff --stat ORIG_HEAD HEAD 2>/dev/null | tail -n +1 || true
    ;;
  push)
    cp "$SKILL" skills/레이싱.md
    git add -A
    if git diff --cached --quiet; then echo "변경 없음 — 푸시 생략"; exit 0; fi
    MSG="${2:-레이싱 문서 업데이트 $(date +%y%m%d)}"
    git commit -q -m "$MSG" -m "Co-Authored-By: Claude Fable 5.1 <noreply@anthropic.com>"
    git pull -q --rebase origin main
    git push -q origin main
    echo "푸시 완료 — $(git log -1 --format='%h %s')"
    git show --stat --format= HEAD
    ;;
  status)
    git fetch -q origin
    echo "[로컬 변경]"; git status --short
    echo "[원격 미반영 커밋]"; git log HEAD..origin/main --oneline
    ;;
  *) echo "사용법: racing-sync.sh {pull|push [메시지]|status}"; exit 1 ;;
esac
