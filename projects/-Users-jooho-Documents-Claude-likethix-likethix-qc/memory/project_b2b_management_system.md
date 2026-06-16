---
name: project-b2b-management-system
description: B2B 관리 시스템 (진행업체 + 아웃바운딩) Supabase 전환 완료 — lib/b2bData.ts 헬퍼 307줄
metadata: 
  node_type: memory
  type: project
  originSessionId: 08bfe423-0e90-4d8d-a14f-517a4a0497aa
  last_updated: 2026-05-28
---

B2B 진행업체와 아웃바운딩 관리 시스템을 localStorage에서 Supabase로 전환 완료 (2026-05-28).

## 핵심 파일

**lib/b2bData.ts** (307줄)
- camelCase ↔ snake_case 자동 변환 (rowToCompany, companyToRow)
- localStorage → Supabase 자동 마이그레이션 (migrateLocalStorageIfNeeded)

## Supabase 테이블

### b2b_companies (진행업체, 19개 필드)
**4단계 워크플로우:** 문의접수 → 견적서요청 → 진행 → 완료

**필드:**
- 기본: name, business_number, business_license_received, contact, phone, email
- 구매: products, quantity, due_date
- 배송: address, delivery_condition
- 증빙: budget, purpose, tax_invoice_type
- 진행: estimate_delivered, status, notes, progress_checklist (jsonb), estimate_price, final_price
- 메타: created_at, inserted_at

### b2b_outbound (아웃바운딩)
**sourceType:**
- 'completed' — 거래완료 (b2b_companies status='완료' 시 자동 추가)
- 'pending' — 견적후무응답 (견적서요청 단계에서 수동 이동)

**필드:** name, contact, phone, email, industry, status (미연락/연락중/관심있음/거절/완료), notes, last_contact_date, source_type, created_at, inserted_at

## CRUD 함수

**진행업체:**
- fetchCompanies() — 전체 조회 (created_at 최신순)
- insertCompany(company) — 신규 추가
- updateCompanyRow(id, company) — 수정
- deleteCompanyRow(id) — 삭제

**아웃바운딩:**
- fetchOutbound() — 전체 조회
- insertOutbound(outbound) — 신규 추가
- updateOutboundRow(id, outbound) — 수정
- deleteOutboundRow(id) — 삭제
- **existsOutboundByPhone(phone)** — 전화번호 중복 체크 (신규 추가 전 필수)

## 버그 수정 (2026-05-28)

- commit 033071a: 삭제 기능 버그 수정
- commit 6665cdc: TypeScript null 체크 추가
- commit c192591: Hydration 오류 수정

## ♻️ B2B 재주문 사이클 (핵심 설계)

**완전 순환 구조로 재거래 자동화**

### 1. 신규 문의 → 진행
- 문의접수 → 견적서요청 → 진행 → 완료 (4단계)

### 2. 완료 → 아웃바운딩 (자동)
- **트리거:** status='완료' 변경 시 자동 실행
- **로직:** `B2BCompaniesClient.tsx` updateStatus() 188-205줄
- **동작:**
  - existsOutboundByPhone() 중복 체크
  - insertOutbound() 자동 추가
  - sourceType='completed', status='미연락'
  - notes: "거래 완료일: YYYY-MM-DD"
- **결과:** 거래 완료 고객 이탈 방지 → 아웃바운딩 풀 자동 확보

### 3. 견적후무응답 → 아웃바운딩 (수동)
- **트리거:** "아웃바운딩 이동" 버튼 (moveToOutbound)
- **로직:** `B2BCompaniesClient.tsx` 228-252줄
- **동작:**
  - sourceType='pending', status='미연락'
  - notes: "견적 전달일: YYYY-MM-DD (무응답/보류)"
- **결과:** 견적 후 무응답 케이스도 팔로업 대상으로 전환

### 4. 아웃바운딩 → 재주문 (순환 완성)
- **트리거:** "진행업체로 이동" 버튼 (moveToProgress)
- **로직:** `outbound/page.tsx` 116-153줄
- **동작:**
  - insertCompany() 새 진행업체 추가
  - status='문의접수' (처음부터 재시작)
  - notes='재거래 (아웃바운딩에서 이동)'
  - 기본정보(회사명/담당자/연락처) 자동 복사
  - 아웃바운딩 status='완료'로 변경
- **결과:** 재주문 고객이 다시 진행업체로 → 완전 순환

**순환 다이어그램:**
```
신규 문의 → 진행 → 완료 ──(자동)──→ 아웃바운딩
    ↑                                  │
    └────────(재주문)──────────────────┘
견적후무응답 ──(수동)──→ 아웃바운딩
```

## Why

초기 localStorage 사용 → 브라우저별 분리, 여러 기기/CX팀 협업 불가 → Supabase 전환으로 해결.

**사이클 설계 목적:** 
- 거래 완료 후 고객 이탈 방지 (자동 아웃바운딩)
- 견적 무응답 고객 재접근 기회 확보 (수동 아웃바운딩)
- 재주문 고객 자동 복귀 → 완전 순환 구조

## How to apply

1. **데이터 작업:** `lib/b2bData.ts` 함수 사용 (절대 직접 supabase.from() 호출 금지 — 변환 로직 누락 위험)
2. **타입:** `Company`, `OutboundCompany` import
3. **마이그레이션:** 첫 로드 시 `migrateLocalStorageIfNeeded()` 자동 실행 (한 번만, 백업 후 삭제)
4. **폼 구조:** CX팀 양식 5섹션 (기본정보/구매희망/배송/증빙/추가요청)
5. **아웃바운딩 추가:** 전화번호 중복 체크 `existsOutboundByPhone()` 먼저 호출
6. **사이클 운영:**
   - 완료 시: 자동 아웃바운딩 추가 확인 (알림 팝업)
   - 견적후무응답: 수동 "아웃바운딩 이동" 버튼
   - 재주문: 아웃바운딩에서 "진행업체로 이동" 버튼
   - sourceType으로 유입 경로 추적 (completed/pending)

## 배포

- ✅ Vercel 배포 완료
- ✅ 여러 기기/브라우저 동기화 작동
- ✅ CX팀 협업 가능

관련: [[project-supabase-config]]
