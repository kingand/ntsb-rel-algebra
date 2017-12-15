DECLARE
    BEGIN
        ops.go(
            ops.times_ra('install=ntsb_engine_installation', 'eng=ntsb_engine', 'Eng_EngInst_pair')
        );

        ops.go(
            ops.filter_ra('Eng_EngInst_pair', 'eng_eng_mfrr=install_eng_mfrr, eng_eng_serial_num=install_eng_serial_num', 'Eng_Eng_Pair')
        );

        ops.go(
            ops.reduce_ra('Eng_Eng_Pair', 'aircr_id, eng_mfrr=eng_eng_mfrr, eng_serial_num=eng_eng_serial_num', ops.allcols('Eng_Eng_Pair'), 'Eng_Aircr_id_Hr_Count')
        );

-- Second natural join
        ops.go(
            ops.times_ra('hour=Eng_Aircr_id_Hr_Count', 'evt=ntsb_event', 'Eng_Event')
        );

        ops.go(
            ops.filter_ra('Eng_Event', 'evt_aircr_id=hour_aircr_id', 'Eng_Event_Pair')
        );

        ops.go(
            ops.reduce_ra('Eng_Event_Pair', 'aircr_id=evt_aircr_id', 'evt_number, evt_injury_count, eng_tot_hr_count', 'Eng_Aircr_ID')
        );

        ops.go(
            ops.group_ra('Eng_Aircr_ID', 'eng_tot_hr_count', 'total_injury_count = SUM(evt_injury_count', 'eng_hr_cnt_with_injury_cnt')
        );
END;
/
