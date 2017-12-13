CREATE TABLE ntsb_propeller(
    propeller_type VARCHAR(40),
    propeller_manufacturer VARCHAR(40),
    propeller_model VARCHAR(40),
    PRIMARY KEY (propeller_manufacturer,propeller_model)
);
