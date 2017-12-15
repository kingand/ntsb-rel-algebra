DECLARE
    BEGIN
        ops.go(
            ops.times_ra('ntsb_engine_installation', 'ntsb_engine', 'Eng_EngInst_pair')
        );

        ops.go(
            ops.filter_ra(
                ops.filter_ra('Eng_EngInst_pair', 'ntsb_engine.eng_mfrr=ntsb_engine_installation.eng_mfrr, ntsb_engine.eng_serial_num=ntsb_engine_installation.eng_serial_num', 'Eng_Eng_Pair')
            )
        );

        ops.go(
            ops.reduce_ra('Eng_Eng_Pair', 'aircr_id, eng_mfrr=ntsb_engine.mfrr, eng_serial_num=ntsb_engine.eng_serial_num', ops.allcols('Eng_Eng_Pair'), 'Eng_Aircr_id_Hr_Count')
        );



-- Second natural join
        ops.go(
            ops.times_ra('Eng_Aircr_id_Hr_Count', 'ntsb_event', 'Eng_Event')
        );

        ops.go(
            ops.filter_ra(
                ops.filter_ra('Eng_Event', 'ntsb_event.aircr_id=Eng_Aircr_id_Hr_Count.aircr_id', 'Eng_Event_Pair')
            )
        );

        ops.go(
            ops.reduce_ra('Eng_Event_Pair', 'aircr_id', 'evt_number, evt_injury_count, eng_tot_hr_count', 'Eng_Aircr_ID')
        );



        ops.go(
            ops.group_ra('Eng_Aircr_ID', 'eng_tot_hr_count', 'total_injury_count = SUM(evt_injury_count', 'eng_hr_cnt_with_injury_cnt')
        );



END;
/
