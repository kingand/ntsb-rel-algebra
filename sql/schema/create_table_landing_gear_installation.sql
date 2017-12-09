CREATE TABLE ntsb_landing_gear_install(
    landing_gear_type VARCHAR(40) REFERENCES ntsb_landing_gear(landing_gear_type),
    landing_gear_retr_flag NUMBER(1),
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    PRIMARY KEY (landing_gear_type,aircr_serial_num,aircr_mfrr)
);
