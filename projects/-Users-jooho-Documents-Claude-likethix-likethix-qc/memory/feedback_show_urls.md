---
name: 작업 완료 시 URL 표시
description: 로컬 서버 시작이나 배포 완료 후 항상 로컬/배포 주소 모두 표시
type: feedback
originSessionId: 2a370083-cc90-495a-9f0c-f811af22544a
---
로컬 서버 시작이나 배포 작업을 완료하면 항상 로컬 주소와 배포 주소를 함께 알려준다.

**Why:** 사용자가 작업 완료 후 바로 두 환경 모두 확인할 수 있도록 하기 위함. URL을 별도로 물어보지 않아도 되도록.

**How to apply:** 
- 로컬 서버 시작 시: http://localhost:3000 표시
- Vercel 배포 완료 시: 로컬 주소 + 프로덕션 URL(https://likethix-qc.vercel.app) 함께 표시
- 형식: 간결하게 "로컬: URL / 배포: URL" 또는 목록 형태로
