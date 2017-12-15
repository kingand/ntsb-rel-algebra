DECLARE
    BEGIN
        ops.go(
            ops.time_ra('ntsb_engine_installation', 'ntsb_engine', 'Eng_EngInst_pair')
        );

        ops.go(
            ops.filter_ra(
                ops.filter_ra('Eng_EngInst_pair', 'Engine.eng_mfrr=(EngineInstallation).eng_mfrr, Engine.eng_serial_num=(EngineInstallation).eng_serial_num', 'Eng_Eng_Pair')
            )
        );

        ops.go(
            ops.reduce_ra('Eng_Eng_Pair', 'aircr_id, eng_mfrr=Engine.mfrr, eng_serial_num=Engine.eng_serial_num', ops.allcols('Eng_Eng_Pair', 'Eng_Aircr_id_Hr_Count') )
        );



-- Second natural join
        ops.go(
            ops.time_ra('Eng_Aircr_id_Hr_Count', 'ntsb_event', 'Eng_Event')
        );

        ops.go(
            ops.filter_ra(
                ops.filter_ra('Eng_Event', 'Engine.aircr_id=(Event).aircr_id', 'Eng_Event_Pair')
            )
        );

        ops.go(
            ops.reduce_ra('Eng_Event_Pair', 'aircr_id, aircr_id=Engine.aircr_id', 'evt_number, evt_injury_count, eng_tot_hr_count', 'Eng_Aircr_ID')
        );



        ops.go(
            ops.group_ra('Eng_Aircr_ID', 'eng_tot_hr_count', 'total_injury_count = SUM(evt_injury_count', 'eng_hr_cnt_with_injury_cnt')
        );



END;
/
