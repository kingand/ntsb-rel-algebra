CREATE TABLE ntsb_propeller_inclusion(
    propeller_manufacturer VARCHAR(40),
    propeller_model VARCHAR(40),
    aircr_id NUMBER(5),
    propeller_num VARCHAR(40),
    PRIMARY KEY (propeller_manufacturer,propeller_model,aircr_id),
    FOREIGN KEY (
        aircr_id
    ) REFERENCES ntsb_aircraft(
        aircr_id
    ),
    FOREIGN KEY (
        propeller_manufacturer,
        propeller_model
    ) REFERENCES ntsb_propeller(
        propeller_manufacturer,
        propeller_model
    )
);
