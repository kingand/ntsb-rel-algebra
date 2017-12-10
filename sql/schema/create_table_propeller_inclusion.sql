CREATE TABLE ntsb_propeller_inclusion(
    propeller_manufacturer VARCHAR(40),
    propeller_model VARCHAR(40),
    aircr_serial_num VARCHAR(30),
    aircr_mfrr VARCHAR(30),
    propeller_num VARCHAR(40),
    PRIMARY KEY (propeller_manufacturer,propeller_model,aircr_serial_num,aircr_mfrr),
    FOREIGN KEY (
        aircr_serial_num,
        aircr_mfrr
    ) REFERENCES ntsb_aircraft(
        aircr_serial_num,
        aircr_mfrr
    ),
    FOREIGN KEY (
        propeller_manufacturer,
        propeller_model
    ) REFERENCES ntsb_propeller(
        propeller_manufacturer,
        propeller_model
    )
);
