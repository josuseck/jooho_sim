---
name: sales_upload_gift_fix
description: 판매 업로드 API - 증정/사은품 자동 제외 수정 작업 (2026-04-21)
type: project
originSessionId: 26a1f105-82bb-433f-989c-dde33858907c
---
## 작업 내용

드림산업 1월 익일발주건 엑셀 업로드 실패 → 증정/사은품 자동 제외 기능 추가

**Why:** "증정용 사은품"이 바코드 없어서 업로드 실패. 이런 항목들은 집계 대상이 아니므로 자동으로 걸러내야 함.

**How to apply:** 
- 배송메모에 "증정" 키워드 → 제외 (기존)
- 품명에 "증정" 또는 "사은품" 키워드 → 제외 (신규 추가)
- 신규 형식(드림산업)과 기존 형식(발주조회) 양쪽 다 적용

## 수정 파일

**app/api/sales/upload/route.ts**
- 150-154줄: 신규 형식 품명 체크 추가
- 228-236줄: 기존 형식 품명 체크 추가

전체 수정 코드: `/tmp/코드.md` (672줄, 순수 TypeScript 코드)

## 현재 이슈

**작업 디렉토리 오류**
```
Working directory "/Users/jooho/Documents/Claude/likethix/likethix-qc" no longer exists
```
- Edit 툴, Bash 명령 모두 실패
- 파일 수정이 불가능한 상태
- 사용자가 직접 복사/붙여넣기 해야 함

## 다음 단계

1. Claude Code 재시작
2. /tmp/코드.md 열어서 전체 복사 (Cmd+A, Cmd+C)
3. app/api/sales/upload/route.ts 파일 열기
4. 전체 선택 후 붙여넣기 (기존 코드 완전 교체)
5. 저장
6. 드림산업_1월 익일발주건.xlsx 업로드 테스트
7. 성공하면 1~3월 데이터 전체 재업로드 예정

## 테스트 파일

`/Users/jooho/Downloads/드림산업_1월 익일발주건.xlsx`
- 행 3: "증정용 사은품" → 바코드 없음 오류 발생했던 항목
- 수정 후에는 자동 제외되어야 함
