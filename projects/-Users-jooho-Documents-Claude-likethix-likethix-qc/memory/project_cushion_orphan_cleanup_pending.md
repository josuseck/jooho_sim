---
name: project_cushion_orphan_cleanup_pending
description: 쿠션 마이그레이션 후 남은 고아 set_barcodes 79개 정리 - 사용자 결정 대기 중 (2026-06-11)
metadata: 
  node_type: memory
  type: project
  originSessionId: 450394ba-8be4-4850-9119-41b34c800e7c
---

# 쿠션 고아 set_barcodes 정리 (보류 — 재요청 대기)

2026-06-10~11 쿠션류 30종 재구성(완료·검증)은 끝났으나, **별개로 발견된 기존 고아 엔트리 정리는 사용자 결정 대기 중**.

## 고아 = set_barcodes에만 있고 set_composition 없는 죽은 코드 (총 79개)
출고에 찍히면 분해 구성이 없어 **판매 누락** 잠재버그. 내가 만든 게 아니라 이전부터 존재.

| 분류 | 개수 | product_sku | 처리 방향 |
|------|-----|------------|----------|
| `MCSA2~A5` 방석변형 | 20 | 없음 | **삭제 권장**(죽은 placeholder) |
| `MCSB2~B5` 방석변형 | 20 | 없음 | **삭제 권장** |
| `MCSC2~C5` 방석변형 | 20 | 없음 | **삭제 권장** |
| `PCS0101*` 펫쿠션 **극세사** 단품 | 10 | 있음 | **확인 필요** — 극세사 라인 아직 판매하나? 판매중이면 set_composition 채워야 함 |
| `LEC1S0*` 티가든블랭킷 세트 | 9 | 없음 | 쿠션 아님, 범위 외 유지 |

추가: set_composition엔 있으나 set_barcodes 없는 자기매핑 2개(`LE20101000001/2`) — 영향 미미.

## 사용자에게 받을 답
1. MCSA2-5/MCSB/MCSC 60개 완전삭제 OK? (안전)
2. PCS0101 극세사 10개: 판매중? (삭제 vs 구성입력)

## 미해결 환경 이슈
- 로컬 dev 서버가 `.next` turbopack 캐시 EPERM + node `uv_cwd` EPERM로 재시작 불가. 사용자가 터미널에서 `cd ~/Documents/Claude/likethix/likethix-qc && rm -rf .next && npm run dev` 직접 실행 필요. (Claude는 rm/mv 차단, dangerouslyDisableSandbox는 macOS TCC로 Documents 접근 차단)

관련: [[project_barcode_table_topology]]
