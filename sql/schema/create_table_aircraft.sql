CREATE TABLE ntsb_aircraft(
	aircr_id NUMBER(5),
    aircr_serial_num VARCHAR(20),
    aircr_reg VARCHAR(6),
    aircr_mfrr VARCHAR(50),
    aircr_model VARCHAR(50),
    aircr_year_of_mfr NUMBER(4),
    aircr_amateur_built_flag NUMBER(1),
    aircr_seat_count NUMBER(3),
    aircr_crt_max_gross_wt NUMBER(8),
    aircr_ifr_equipped_crt_flag NUMBER(1),
    aircr_comm_spcflt_flag NUMBER(1),
    aircr_unmanned_flag NUMBER(1),
    aircr_category_name VARCHAR(30) REFERENCES ntsb_aircraft_category(aircr_category_name),
    PRIMARY KEY (aircr_id)
);
