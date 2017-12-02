CREATE TABLE ntsb_aircr(
    aircr_serial_num VARCHAR(20),
    aircr_reg VARCHAR(6),
    aircr_mfrr VARCHAR(50),
    aircr_model VARCHAR(50),
    aircr_year_of_mfr NUMBER(4),
    aircr_airfr_total_time NUMBER(10,2),
    aircr_amateur_built_flag NUMBER(1),
    aircr_flt_crew_seat_count NUMBER(1),
    aircr_cabin_crew_seat_count NUMBER(2),
    aircr_pssngr_seat_count NUMBER(3),
    aircr_crt_max_gross_wt NUMBER(8),
    aircr_air_carrier_oper_cert VARCHAR(20),
    aircr_ifr_equipped_crt_flag NUMBER(1),
    aircr_comm_spcflt_flag NUMBER(1),
    aircr_unmanned_flag NUMBER(1),
    aircr_fire_exteng_sys_type VARCHAR(40),
    PRIMARY KEY (aircr_serial_num, aircr_mfrr)
);
