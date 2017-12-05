CREATE TABLE ntsb_propeller_inclusion(
    propeller_manufacturer VARCHAR(40) REFERENCES ntsb_propeller(propeller_manufacturer),
    propeller_model VARCHAR(40) REFERENCES ntsb_propeller(propeller_model),
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    propeller_num VARCHAR(40),
    PRIMARY KEY (propeller_manufacturer,propeller_model,aircr_serial_num,aircr_mfrr)
);
