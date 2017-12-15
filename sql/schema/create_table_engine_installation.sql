CREATE TABLE ntsb_engine_installation(
    eng_mfrr VARCHAR(40),
    eng_serial_num VARCHAR(40),
    aircr_id NUMBER(5),
    eng_num VARCHAR(40),
    PRIMARY KEY (eng_mfrr,eng_serial_num,aircr_id),
    FOREIGN KEY (
        aircr_id
    ) REFERENCES ntsb_aircraft(
        aircr_id
    ),
    FOREIGN KEY (
        eng_serial_num,
        eng_mfrr
    ) REFERENCES ntsb_engine(
        eng_serial_num,
        eng_mfrr
    )
);
