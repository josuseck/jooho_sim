---
name: notion-editing-strategy
description: "노션 페이지 수정 시 replace_content로 큰 블록 단위 작업, 작은 수정 반복 금지"
metadata: 
  node_type: memory
  type: feedback
  originSessionId: 081f3b62-b29e-46e5-861d-2ec580b6e04d
---

노션 페이지 수정 시 **replace_content 명령으로 큰 블록을 한 번에 교체**해야 한다. 작은 부분을 여러 번 update_content로 시도하지 말 것.

**Why:**
- update_content는 텍스트 매칭이 정확해야 하고, 노션의 마크다운 형식 차이로 실패하기 쉬움
- 여러 번 시도하면 불필요한 API 호출과 시간 낭비
- 2026-06-12 사례: 중복 제거를 위해 여러 번 시도했지만 계속 실패, 결국 replace_content로 헤더부터 전체 재작성해서 한 번에 해결

**How to apply:**
1. 노션 수정 시 **처음부터 replace_content 사용** 고려
2. old_str은 명확한 앵커 포인트 (예: 페이지 상단 헤더)
3. new_str에 수정된 전체 내용 포함
4. 작은 수정이라도 해당 섹션 전체를 교체하는 것이 더 안전
5. update_content는 간단한 텍스트 1-2줄 수정할 때만 사용

**성공 패턴:**
```
notion-update-page({
  command: "replace_content",
  old_str: "📅 **회의일자**: 2026년 6월 12일\n📌 **주차**: 26년 24주차",
  new_str: "전체 섹션 내용..."
})
```
