CREATE TABLE ntsb_approach(
    runway_id VARCHAR(20),
    runway_airport_id VARCHAR(50),
    event_number VARCHAR(30) REFERENCES ntsb_event(evt_number),
    ifr_approach_type VARCHAR(30),
    vfr_approach_type VARCHAR(30),
    PRIMARY KEY (runway_id,runway_airport_id,event_number),
    FOREIGN KEY (
        runway_id,
        runway_airport_id
    ) REFERENCES ntsb_runway(
        runway_id,
        airport_id
    )
);
