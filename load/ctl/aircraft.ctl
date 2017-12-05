load data
    infile "../data/aircraft.csv"
    into table employee
    fields terminated by "|"
    (
        aircr_serial_num,
        aircr_reg,
        aircr_mfrr,
        aircr_model,
        aircr_year_of_mfr,
        aircr_airfr_total_time,
        aircr_amateur_built_flag,
        aircr_flt_crew_seat_count,
        aircr_cabin_crew_seat_count,
        aircr_pssngr_seat_count,
        aircr_crt_max_gross_wt,
        aircr_air_carrier_oper_cert,
        aircr_ifr_equipped_crt_flag,
        aircr_comm_spcflt_flag,
        aircr_unmanned_flag,
        aircr_fire_exteng_sys_type
    )
