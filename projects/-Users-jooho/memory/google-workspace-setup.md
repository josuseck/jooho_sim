---
name: 구글워크스페이스
description: likethix 구글워크스페이스 셋업 완료 (DKIM, 드라이브, 스토리지), 도메인 전략, 용도 구분
type: reference
originSessionId: c88a9e7f-9f8a-4c1f-b5a4-30193312047c
lastUpdated: 2026-05-07
---
# 라익디스 구글 워크스페이스 (2026.05.07 업데이트)

## ✅ 현재 상태 (2026.05.06 기준)

### likethix.co.kr → 구글 워크스페이스
- **계정**: `jooho@likethix.co.kr` (사용자, Super Admin)
- **계정**: `jookyu@likethix.co.kr` (대표님, Super Admin)
- **플랜**: Business Starter
- **네임서버**: ns1/ns2.cafe24.com, ns1/ns2.cafe24.co.kr
- **MX**: SMTP.GOOGLE.COM (priority 1)
- **SPF**: `v=spf1 include:_spf.google.com ~all`
- **TXT 인증**: `google-site-verification=qkB0s6lL...`

### likethix.com → 네이버웍스 (그대로)
- 메일: `jooho@likethix.com`
- **네임서버**: ans1~4.hostcocoa.com (AWS Route 53 기반)
- **MX**: kr1-aspmx1.worksmobile.com (10), kr1-aspmx2.worksmobile.com (20)
- **A**: 13.225.134.x (AWS CloudFront - 회사 웹사이트)
- ⚠️ DNS 외부 관리 → 만지면 위험

### likethix.kr → hostcocoa (사용 안 함)

---

## 🎯 최종 운영 방침 (2026.05.07 확정)

**도메인 swap 취소 - 현재 상태 유지**

```
likethix.com    → 네이버웍스 (메인 메일 + 사내 메신저)
likethix.co.kr  → 구글 워크스페이스 (Gemini + 협업 도구)
```

### 용도 구분

**네이버웍스 (likethix.com) - 메인**
- ✅ 사내 메신저 (웍스톡 등)
- ✅ 기존 이메일 커뮤니케이션
- ✅ 외부 거래처 소통
- ✅ 웹사이트 운영

**구글 워크스페이스 (likethix.co.kr) - 업무 도구**
- ✅ **Gemini** (AI 활용) - 주 목적
- ✅ 구글 스프레드시트 (데이터 협업)
- ✅ 구글 드라이브 (팀 파일 공유)
- ✅ 구글 문서, 캘린더 등

**Why**: 메일 시스템 교체가 아닌 **구글 생태계 추가**가 목적. 네이버웍스는 사내 메신저로 계속 사용, 구글은 Gemini와 협업 도구 활용.

---

## 🚨 한 달간의 미스터리 (해결됨)

### 문제
구글 도메인 인증(TXT)이 한 달째 안 됨

### 원인 (정확)
likethix.co.kr 네임서버가 외부(`hostcocoa.com`, AWS Route 53)로 설정 → 카페24 DNS 관리 화면이 실제 DNS를 통제 못함. 카페24 화면에 입력만 되고 진짜 DNS엔 반영 안 됨.

### 해결
likethix.co.kr 네임서버를 **카페24 호스팅 네임서버**로 변경 → 즉시 모든 게 작동

---

## 📋 카페24 DNS 설정 가이드 (likethix.co.kr 기준)

### 1. 네임서버 변경
- 도메인관리 → 네임서버 변경 → likethix.co.kr → "네임서버 변경하기"
- "**카페24 호스팅 네임서버**" 선택 → 변경하기
- 즉시 또는 수 분 내 전파 (실제 경험: 즉시 반영)

### 2. MX 레코드 (구글 메일 받기 위해)
- 도메인관리 → DNS 관리 → likethix.co.kr → 메일서버(MX) 관리 → MX 추가
- 호스트: 비움
- 메일서버: `SMTP.GOOGLE.COM`
- 우선순위: `1`

> 옛날엔 5개 추가했지만 구글이 단순화. 1개만 필요.

### 3. SPF 레코드 (스팸 방지)
- 도메인관리 → DNS 관리 → likethix.co.kr → **TXT 관리** → TXT 추가
- 호스트: 비움
- TXT: `v=spf1 include:_spf.google.com ~all`
- 카페24가 자동 인식해서 SPF 관리 섹션으로 이동시켜줌

> ⚠️ 카페24 SPF 관리 메뉴는 IP 형식만 받음(`ip4:` 형식). `include:` 사용 시 **TXT 관리**에서 입력해야 함.

### 4. DKIM (완료 - 2026.05.07)
- 구글 어드민 → 앱 → Gmail → 인증 → 새 레코드 생성
- **키 길이**: 1024비트 (카페24 TXT 253자 제한 때문)
- **호스트**: `google._domainkey`
- **TXT**: `v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiOI+0CSGY1KK7RkQZLDvD4HtEd6p7WlTVFPTwN3ARMwmSvmi/h7LjzyesRPN55aHvIiVx2Nr3q9NsTh1Ik6fBnsu6l6CnyuF1Tx88zq1h7/DTtmyc8hc8DizyED5hBYGwLmWmL/42zVKzxGtdL17G4NJw+HwsThhmpUbV9WTM+QIDAQAB`
- 카페24 DNS에 TXT 추가 완료
- "인증 시작" 완료 → **상태: 메일 인증 중** ✅

---

## 📁 구글 드라이브 구조 (2026.05.07 생성)

### 공유 드라이브: 라익디스

**팀별 최상위 폴더 (6개):**
```
📁 라익디스 (공유 드라이브)
├── 📁 운영팀
├── 📁 디자인팀
├── 📁 마케팅팀
├── 📁 QC팀
├── 📁 CS팀
└── 📁 공통자료
```

**하위 구조**: 각 팀이 자율적으로 구성

### 스토리지 정보

**플랜**: Business Starter
- 사용자당: 30GB
- 현재 사용자: 2명 (jooho + jookyu)
- **총 용량: 60GB** (풀링 스토리지)

**풀링 스토리지 특징:**
- 개인별 할당 X
- 조직 전체 60GB 공유
- 내 드라이브 + 공유 드라이브 + Gmail 모두 포함
- 한 사람이 많이 써도 전체 합이 60GB 이하면 OK

**용량 확인:**
- Admin Console → 보고 → 앱 보고서 → 드라이브
- 개인: https://drive.google.com/settings/storage

---

## 🔍 DNS 진단 명령어

```bash
# 네임서버 확인
dig NS likethix.co.kr +short

# MX 레코드
dig MX likethix.co.kr +short

# TXT/SPF
dig TXT likethix.co.kr +short

# 특정 네임서버에 직접 질의
dig MX likethix.com +short @ns1.cafe24.com
dig TXT likethix.co.kr +short @8.8.8.8
```

---

## ⚠️ 주의사항

### 절대 하지 말 것
1. **likethix.com 네임서버 변경 금지** - 메일+웹사이트 동시 끊김
2. likethix.com 카페24 DNS 화면 입력 금지 - 옛 daum MX 잔존, 만지면 위험
3. likethix.co.kr을 다른 네임서버로 변경 금지 - 구글 메일 끊김

### 카페24 함정
- 카페24 도메인관리 → DNS 관리는 **카페24 네임서버 사용 도메인만** 작동
- 외부 네임서버(hostcocoa 등) 사용 시 입력해도 반영 안 됨
- 항상 `dig`로 실제 DNS 반영 확인할 것

---

## 👥 사용자 계정

### jooho@likethix.co.kr (본인)
- 역할: Super Admin
- 용도: IT 실무 담당
- 2단계 인증: 켜야 함 (TODO)

### jookyu@likethix.co.kr (대표님)
- 역할: Super Admin (13개 모든 관리자 역할)
- 용도: 회사 대표 명의
- 2단계 인증: 켜야 함 (TODO)
- 결제 관리자 권한 추가 필요 (TODO)

---

## 📅 완료 및 진행 상황

### ✅ 완료 (2026.05.07)
- [x] DKIM 설정 (1024비트, 메일 인증 중)
- [x] 구글 드라이브 팀 폴더 구조 생성
- [x] 스토리지 정보 확인 (60GB 풀링)

### 🔄 진행 중
- [ ] Gmail 서명 설정 (네이버웍스 서명 기반)
- [ ] 구글 그룹 생성 (QC팀, 디자인팀, 마케팅팀, CS팀, 운영팀)

### ⏳ TODO (Week 2-3)
- [ ] **Gemini 구독** (핵심 목적!)
- [ ] 대표님 첫 로그인 + 2단계 인증
- [ ] 스프레드시트 권한 정책 설정
- [ ] Google Chat 활성화 (선택)
- [ ] 기존 데이터 마이그레이션 테스트

---

## ✉️ 네이버웍스 이메일 서명 (백업)

**김주호 팀장 서명 (jooho@likethix.com)**

### 구성
- 라익디스 로고
- 회사명: 라익디스(likethix)
- 이름/직책: 김주호 팀장
- 영문: jooho KIM / 김주호
- 연락처:
  - T: 070-7537-1912
  - M: 010-4498-1911
  - E: jooho@likethix.com
  - H: www.likethix.com
- 주소:
  - 한글: 서울 마포구 월드컵북로 396 연구개발타워(R&D센터) 6층 601-02호
  - 영문: 601-02ho, Nuritkum Square R&D Tower, 396, World Cup buk-ro, Mapo-gu, Seoul, Republic of Korea
- 법적 고지: 영업비밀/회사 기밀정보 관련 안내문

### Gmail 서명 적용 시
- 이메일 주소 변경 필요: `jooho@likethix.com` → `jooho@likethix.co.kr` (또는 병기)
- 로고: 구글 드라이브 업로드 또는 웹사이트 URL 사용
- HTML 서명 코드 변환 필요

---

## 💡 likethix.com 보조 도메인 (보류)

likethix.com을 구글에 보조 도메인 등록 시도했으나:
- DNS 인증이 외부 네임서버 때문에 어려움
- 메일+웹사이트 끊길 위험
- → **D-Day에 한 번에 처리하기로 결정**

대안으로 검토했으나 미사용:
- 자동전달 (네이버웍스 → 구글, 즉시)
- POP3 가져오기 (구글이 네이버웍스에서, 5~15분 지연)

---

## Why & How to apply

**Why**: 라익디스의 구글 워크스페이스 환경 전체 컨텍스트를 한 번에 파악하기 위함. DKIM 설정 완료, 드라이브 구조, 스토리지 정보, 네이버웍스와의 용도 구분까지 모두 포함. 도메인 swap은 취소하고 현재 상태(네이버웍스: 메인 메일+메신저, 구글: Gemini+협업)로 운영.

**How to apply**: 구글 워크스페이스 설정, Gmail 서명, 드라이브 관리, 그룹 생성 등 작업 시 참조. 네이버웍스는 메인 메일로 계속 사용, 구글은 AI(Gemini)와 협업 도구(Sheets, Docs, Drive) 활용이 주 목적.
