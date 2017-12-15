CREATE TABLE ntsb_landing_gear_install(
    landing_gear_type VARCHAR(40) REFERENCES ntsb_landing_gear(landing_gear_type),
    landing_gear_retr_flag NUMBER(1),
    aircr_id NUMBER(5)
    PRIMARY KEY (landing_gear_type,aircr_id),
    FOREIGN KEY (
        aircr_id
    ) REFERENCES ntsb_aircraft(
        aircr_id
    )
);
