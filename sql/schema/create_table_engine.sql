CREATE TABLE ntsb_engine(
    eng_mfrr VARCHAR(35),
    eng_serial_num VARCHAR(20),
    eng_model VARCHAR(30),
    eng_mfr_date DATE,
    eng_rated_pwr NUMBER(8),
    eng_rated_pwr_unit VARCHAR(10),
    eng_tot_hr_count NUMBER(9),
    eng_last_insp_t_elap NUMBER(6),
    eng_last_overh_t_elap NUMBER(6),
    eng_type VARCHAR(40),
    PRIMARY KEY (eng_mfrr, eng_serial_num)
);
