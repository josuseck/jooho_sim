---
name: 원가 자동 변경 금지
description: cost_data의 원가(cost_excluding_vat)는 절대 자동 재계산하지 않고, 사용자가 직접 변경할 때만 업데이트
type: feedback
originSessionId: dc7bbb6a-b6ba-4278-94fe-7e27ec479b31
---
원가 입력(admin/cost) 페이지의 cost_excluding_vat 값은 절대 자동으로 바뀌면 안 된다.

**공식:** 원가 = 부자재 합계 + 드림정산(제조사)
- 부자재: subsidiary_data의 항목들 (물류비 포함: 출고비, 운반비, 창고비, 입고박스 등)
- 드림정산: dream_settlement 컬럼

**Why:** 사용자가 직접 가격을 세팅해놓은 값이 기준이 됨. 부자재 단가가 변경되더라도 원가는 사용자가 직접 수정하기 전까지 고정되어야 함. 이전에 useEffect에서 subsidiary_data 최신 가격으로 자동 재계산하는 코드가 있어서 세팅값이 바뀌는 문제가 발생했음.

**How to apply:** AdminCostManager에서 페이지 로드 시 cost_excluding_vat를 재계산하거나 덮어쓰는 코드를 절대 추가하지 않을 것. materialSettings 표시용 로드만 허용.
