# PC 스펙 — 숙소 개인 게이밍 PC / 친구 조립 PC

> ⚠️ **심레이싱 PC와 별개 문서.** 심레이싱 PC(7800X3D → 9800X3D, RTX 5080)는 `skills/레이싱.md` 참고.
> 최종 갱신: 2026.10.15

---

## JH Main — 숙소 개인 게이밍 PC

| 부품 | 모델 |
|---|---|
| CPU | Intel i7-14700K |
| 메인보드 | ASUS ROG Maximus Z690 APEX |
| RAM | OLOy DDR5 64GB (2×32) 6400 CL32 1.35V |
| GPU | **Colorful iGame RTX 4080 Vulcan** (2023.05.16 구매) |
| 쿨러 | NZXT Kraken Elite 360 |
| PSU | Antec Signature 1000W Titanium |

### 바이오스 세팅 (미진행, 요청 예정)
- 전제: 마이크로코드 **0x12B 이상** 바이오스인지 먼저 확인
- 방향: 언더볼팅 + P코어 5.5~5.6GHz 라이트 오버
- 램: XMP 6400 → 6600~6800 시도 가능

---

## GPU 업그레이드 검토 (2026.10.15) — **결론: 교체 불필요**

### RTX 4080 vs RTX 5070 Ti

| 항목 | RTX 4080 (보유) | RTX 5070 Ti |
|---|---|---|
| 1440p Ultra | 70.3% | 69.8% |
| 4K Ultra | 60.9% | 61.9% |
| VRAM | 16GB | 16GB |
| CUDA 코어 | 9,728 | 8,960 |
| 메모리 대역폭 | 717 GB/s | 896 GB/s |

- 래스터 성능 **사실상 동급**. 리뷰에 따라 4080이 앞서기도 함 → 교체 시 차액만 손실
- 5070 Ti 유일 장점은 **DLSS 4 MFG**(4080 미지원). 다만 입력 지연 증가로 싱글플레이 한정 → 교체 사유 불충분
- 5080도 4080 대비 **+12%**뿐이라 가성비 애매
- **판단: 4080으로 2~3년 더 사용.** 블프 예산은 심레이싱 PC 9800X3D에 투입

**출처**: [TechSpot 5070 Ti 리뷰](https://www.techspot.com/review/2955-nvidia-geforce-rtx-5070-ti/) / [PCWorld](https://www.pcworld.com/article/2612343/nvidia-geforce-rtx-5070-ti-review.html) / [GameGPU](https://en.gamegpu.com/news/zhelezo/rtx-5070-ti-okazalas-na-urovne-rtx-4080-no-ustupaet-rtx-4080-super)

---

## 써멀 재도포 검토 (2026.10.15, 진행 중)

**상황**: 구매 3년 5개월 경과. 보증(통상 3년) 만료 추정 → 분해 제약 없으나 유상.
**진행**: 서비스센터 문의 접수 완료. 유상이어도 진행 의향 있음.

### 판단 기준 — 3DMark + HWiNFO64 측정 후 결정

| 측정값 | 정상 | 재도포 권장 |
|---|---|---|
| 코어 ↔ 핫스팟 차이 | 15°C 이내 | **20°C 이상** |
| 메모리 정션 온도 | 90°C 이하 | **90°C 초과 → 패드 교체 병행** |

> 연식만으로 하는 작업이 아님. 수치 정상이면 센터 답변 와도 안 보내면 됨.

### 센터 확인 사항
1. **써멀패드도 함께 교체되는지** — 메모리·VRM 패드가 실제 온도 하락폭이 큼. 그리스만 바르는 업체 많음
2. **PTM7950 사용 가능한지** — 상변화 타입, 펌프아웃 없고 3~4년 유지. 일반 그리스면 2년 뒤 재작업 필요

### 대안
- 사설 수리점: 써멀+패드 교체 **5~8만원**, 당일 가능한 곳 다수
- 자가 작업: PTM7950 + 써멀패드 **2~3만원**. Vulcan은 백플레이트 나사 수가 많으나 난이도 자체는 낮음

### ⏳ 대기 중
- **3DMark 측정 결과** (Time Spy / Steel Nomad 점수 + HWiNFO64 Max값: GPU Temperature, GPU Hot Spot, GPU Memory Junction)
- 서비스센터 회신

---

## JG computer — 친구 조립 PC (음원작업용 DAW)

| 부품 | 모델 |
|---|---|
| CPU | Core Ultra 7 270K Plus |
| 메인보드 | ASUS ROG STRIX B860-G |
| RAM | G.Skill Trident Z5 NEO 32GB (2×16) 6000 CL32 (EXPO) |
| 쿨러 | Thermalright Frozen Horizon 360 |

**세팅 결론**: B860은 CPU 오버 불가. XMP/EXPO 6000 + 전력 프로필 Performance + 윈도우 전원 고성능. 언더볼팅 불필요.
