CREATE TABLE ntsb_approach(
    runway_id VARCHAR(40) REFERENCES ntsb_runway(runway_id),
    event_number VARCHAR(30) REFERENCES ntsb_event(event_number),
    ifr_approach_type VARCHAR(30),
    vfr_approach_type VARCHAR(30),
    PRIMARY KEY (runway_id,event_number)
);
