---
name: project_old_cushion_set_barcodes
description: "구 방석 세트 바코드 3개 (6/9~10 데이터용, 6/11부터 사용 안 함)"
metadata: 
  node_type: memory
  type: project
  originSessionId: 89994fa6-285f-4fb4-88ad-31203b608e5f
---

구 방석 세트 바코드는 6/9, 6/10 데이터에만 존재하며, 6/11부터는 사용하지 않는다.

**등록된 구 세트 (product_sku, set_barcodes, set_composition):**

1. **MCSB1004001** - 미니멀 방석_블루문(Blue_Moon)_B
   - LE101C2000001 (방석 충전재 600g, 해외) × 4개
   - LE10101004001 (방석 커버_블루문_600x600) × 4개

2. **MCSB1002001** - 미니멀 방석_브라운(Light_Brown)_B
   - LE101C2000001 (방석 충전재 600g, 해외) × 4개
   - LE10101002001 (방석 커버_브라운_600x600) × 4개

3. **MCSC1004001** - 미니멀 방석_블루문(Blue_Moon)_C
   - LE101C2000001 (방석 충전재 600g, 해외) × 2개
   - LE10101004001 (방석 커버_블루문_600x600) × 2개

**Why:** 세트 구성 변경 및 충전재 해외→국내 전환으로 인해 6/11부터는 새 바코드 체계 사용.

**How to apply:** 
- 6/9, 6/10 데이터 분석/조회 시에만 사용
- 6/11 이후 신규 업로드에는 이 바코드들이 나타나지 않음
- DB에서 삭제하지 않고 과거 데이터 조회용으로 유지
- 관련 메모리: [[project_cushion_filling_change]]
