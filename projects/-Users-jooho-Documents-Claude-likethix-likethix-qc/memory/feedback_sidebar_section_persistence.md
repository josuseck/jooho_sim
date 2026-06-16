---
name: 사이드바 섹션 유지 규칙
description: QC/CX 섹션 간 페이지 이동 시 현재 섹션을 유지해야 함
type: feedback
originSessionId: be8ffa8e-ae8c-4e94-8713-cb3fdf65b8cc
---
사이드바에서 다른 페이지로 이동할 때 **현재 섹션(QC/CX)을 유지**해야 한다. 섹션 간 자동 전환은 금지.

**Why:** 
사용자가 CX 작업 중일 때 QC 섹션으로 갑자기 바뀌면 혼란스럽고, 원래 작업으로 돌아가기 어렵다. 각 섹션의 컨텍스트를 유지하는 것이 중요함.

**How to apply:**
1. 공통 페이지(SKU 등)는 URL 파라미터로 출처 추적 (`?from=qc`, `?from=cx`)
2. 페이지 로드 시 파라미터에 따라 적절한 섹션 표시
3. 기본값은 주 사용자층에 맞춰 설정 (예: SKU는 CX 기본)
4. 서버/클라이언트 렌더링 일치시켜 깜빡임 방지 (`suppressHydrationWarning` 사용)

**구현 예시 (SKU 페이지):**
- QC 섹션의 SKU 링크: `/sku?from=qc`
- CX 섹션의 SKU 링크: `/sku?from=cx`
- 기본값(파라미터 없음): CX 섹션 표시
