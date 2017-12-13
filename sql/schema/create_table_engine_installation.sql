CREATE TABLE ntsb_engine_installation(
    eng_mfrr VARCHAR(40),
    eng_serial_num VARCHAR(40),
    aircr_serial_num VARCHAR(30),
    aircr_mfrr VARCHAR(30),
    eng_num VARCHAR(40),
    PRIMARY KEY (eng_mfrr,eng_serial_num,aircr_serial_num,aircr_mfrr),
    FOREIGN KEY (
        aircr_serial_num,
        aircr_mfrr
    ) REFERENCES ntsb_aircraft(
        aircr_serial_num,
        aircr_mfrr
    ),
    FOREIGN KEY (
        eng_serial_num,
        eng_mfrr
    ) REFERENCES ntsb_engine(
        eng_serial_num,
        eng_mfrr
    )
);
