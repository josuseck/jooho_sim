# Memory Index

## Project
- [project_delivery_count_logic.md](project_delivery_count_logic.md) - 택배건수 집계 로직 (본사소진/협찬 제외, 합배송 중복 제거) - 매우 중요!
- [project_q2_kpi.md](project_q2_kpi.md) - 2Q 원가절감 중심 KPI 목표 (분기 570만원 절감, 마진율 +3.9%p)
- [project_sales_upload_gift_fix.md](project_sales_upload_gift_fix.md) - 판매 업로드 증정/사은품 자동 제외 수정 (작업 디렉토리 오류로 중단, 재시작 필요)
- [project_supabase_config.md](project_supabase_config.md) - Supabase 데이터베이스 설정 (자료분석 시 자동 조회용)
- [project_analysis_save_path.md](project_analysis_save_path.md) - 분석 파일 저장 경로 (~/Documents/Claude/자료분석, YYYY-MM-DD 형식)
- [project_shipment_order_features.md](project_shipment_order_features.md) - 핵심 운영: 출고데이터 업로드 & 발주자동화 (세트분해, 창고분리)
- [project_weekly_analysis_method.md](project_weekly_analysis_method.md) - 주간 분석 방법 (주차 목~수, pagination 필수, 불량=경결함 기준, config 분류)
- [project_barcode_patterns.md](project_barcode_patterns.md) - 제품 바코드 패턴 매핑 (LE10400=그레인, LE10300=시어서커, LF=사이잘, 순서 중요!)
- [project_barcode_table_topology.md](project_barcode_table_topology.md) - 바코드/세트 변경 시 건드릴 테이블 5개 + FK 순서 (product_sku→set_composition→set_barcodes) — 쿠션 전면수정 필수!
- [project_cushion_orphan_cleanup_pending.md](project_cushion_orphan_cleanup_pending.md) - 쿠션 고아 set_barcodes 79개 정리 보류(MCSA2-5/MCSB/MCSC 삭제 + PCS0101 극세사 확인) — 사용자 재요청 대기
- [project_weekly_meeting_week_offset.md](project_weekly_meeting_week_offset.md) - 주간회의 주차 번호 = 데이터 주차 +1 (W18 → 19주차)
- [project_b2b_management_system.md](project_b2b_management_system.md) - B2B 진행업체/아웃바운딩 Supabase 테이블 (b2b_companies, b2b_outbound) — lib/b2bData.ts 헬퍼 사용
- [project_old_cushion_set_barcodes.md](project_old_cushion_set_barcodes.md) - 구 방석 세트 바코드 3개 (6/9~10 데이터용, 6/11부터 사용 안 함, 과거 데이터 조회용 유지)
- [project_cushion_filling_change.md](project_cushion_filling_change.md) - 방석/쿠션 충전재 해외→국내 전환 (6/11부터, 바코드 매핑 LE101C→LE101K)
- [project_return_exchange_sheet_format.md](project_return_exchange_sheet_format.md) - 반품/교환 시트 형식 변경 (바코드 컬럼: 과거=결제수단, 최근=제품바코드 / 불량여부: True→경결함)

## Reference
- [reference_data_analysis_guide.md](reference_data_analysis_guide.md) - 자료분석 요청 시 자동 참조 (`docs/자료분석_가이드.md`)
- [reference_git_push_ssh.md](reference_git_push_ssh.md) - GitHub 푸시 시 SSH 키 (~/.ssh/id_ed25519_new, passphrase 없음)

## Feedback
- [feedback_notion_editing_strategy.md](feedback_notion_editing_strategy.md) - 노션 수정 시 replace_content로 큰 블록 단위 작업, 작은 수정 반복 금지
- [feedback_autonomous_work.md](feedback_autonomous_work.md) - 기술적 확인 요청 없이 자율적으로 작업 진행
- [feedback_open_local_site.md](feedback_open_local_site.md) - "문 열어" 요청 시 로컬 개발 서버 자동 시작
- [feedback_cost_no_auto_update.md](feedback_cost_no_auto_update.md) - 원가(cost_excluding_vat)는 절대 자동 재계산 금지, 수동 변경만 허용
- [feedback_show_urls.md](feedback_show_urls.md) - 로컬/배포 작업 완료 시 항상 두 주소 모두 표시
- [feedback_sidebar_section_persistence.md](feedback_sidebar_section_persistence.md) - 사이드바 섹션(QC/CX) 간 이동 시 현재 섹션 유지, 자동 전환 금지
- [feedback_weekly_meeting_cumulative.md](feedback_weekly_meeting_cumulative.md) - 주간회의 노션에 항상 Q2 누적 현황 (판매/반품/불량) 포함
- [feedback_data_reliability.md](feedback_data_reliability.md) - 데이터 분석 신뢰성: 리밋 해제·config 분류·2회 재실행 검증 후 보고
- [feedback_weekly_sales_analysis.md](feedback_weekly_sales_analysis.md) - "이번주차 판매현황" 요청 시 판매/반품/불량율 자동 분석 실행 (직전 완료 주차 기준)
- [feedback_weekly_date_calculation.md](feedback_weekly_date_calculation.md) - 주간 분석 날짜는 항상 목요일~수요일, Python으로 요일 계산 필수, 추측 금지
