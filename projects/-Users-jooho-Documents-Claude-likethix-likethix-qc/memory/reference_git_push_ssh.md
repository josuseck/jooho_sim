---
name: reference-git-push-ssh
description: GitHub 푸시 시 SSH 키 정보 (passphrase 없는 새 키 사용)
metadata: 
  node_type: memory
  type: reference
  originSessionId: 08bfe423-0e90-4d8d-a14f-517a4a0497aa
---

GitHub 인증용 SSH 키 정보:
- **사용 키:** `~/.ssh/id_ed25519_new` (passphrase 없음, 2026-05-28 생성)
- **기존 키:** `~/.ssh/id_ed25519` (passphrase 걸려있음 — 사용자가 기억 못함)
- **GitHub 등록명:** `likethix-mac`

**How to use:**
Claude Code 환경에서 자동 푸시가 안 될 때, 사용자에게 안내할 명령어:

```bash
GIT_SSH_COMMAND="ssh -i ~/.ssh/id_ed25519_new -o IdentitiesOnly=yes" git push origin main
```

**왜 필요한가:**
- 기본 SSH 키(`id_ed25519`)는 passphrase가 걸려있어 tty 없는 환경에서 인증 실패
- HTTPS는 토큰 만료/저장 안 됨 문제
- 새 키는 GitHub에 등록되어 있으므로 `IdentitiesOnly=yes`로 명시 시 성공

remote URL은 SSH 형식이어야 함: `git@github.com:josuseck/likethix-qc.git`
