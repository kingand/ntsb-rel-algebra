CREATE TABLE ntsb_propeller_inclusion(
    eng_mfrr VARCHAR(40) REFERENCES ntsb_engine(eng_mfrr),
    eng_serial_num VARCHAR(40) REFERENCES ntsb_engine(eng_serial_num),
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    eng_num VARCHAR(40),
    PRIMARY KEY (eng_mfrr,eng_serial_num,aircr_serial_num,aircr_mfrr)
);
