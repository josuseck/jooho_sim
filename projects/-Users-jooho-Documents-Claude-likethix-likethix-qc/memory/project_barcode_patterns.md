---
name: project_barcode_patterns
description: 제품 바코드 패턴 매핑 (데이터 분석 시 자동 적용)
type: project
originSessionId: 509e7b82-3370-464e-8833-9426ba606919
---
# 바코드 패턴 설정

**설정 파일**: `config/barcode_patterns.json`

## 제품별 바코드 패턴 (우선순위 순서)

1. **LE10400** → 그레인러그
2. **LE10300** → 시어서커 
3. **LF** → 사이잘룩러그
4. **LE** → 미니멀러그 (LE10400, LE10300 제외)
5. **R0** → 기타 (티가든블랭킷 등)

### 주문제작 (CUSTOM)
- CUSTOM_SHEERSUCKER → 시어서커
- CUSTOM_MINIMAL → 미니멀러그
- CUSTOM_GRAIN → 그레인러그
- CUSTOM_SISAL → 사이잘룩러그

## Why: 순서가 중요한 이유

LE10400, LE10300도 "LE"로 시작하기 때문에, LE를 먼저 체크하면 모두 미니멀러그로 잘못 집계됨. 반드시 긴 패턴(LE10400, LE10300)을 먼저 체크한 후 짧은 패턴(LE)을 체크해야 함.

## How to apply: 데이터 분석 시

판매/반품/불량 분석 요청 시:
1. `config/barcode_patterns.json` 읽기
2. priority 순서대로 바코드 매칭
3. SQL CASE 문 또는 Python if-elif로 구현
4. 주문제작(CUSTOM_*)도 반드시 포함

**최종 검증**: 
- W17 시어서커 538개 (LE10300: 523개 + CUSTOM: 15개)
- W18 시어서커 716개 (LE10300: 712개 + CUSTOM: 4개)
