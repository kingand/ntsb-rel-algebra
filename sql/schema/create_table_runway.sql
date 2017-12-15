CREATE TABLE ntsb_runway(
    runway_id VARCHAR(20),
    runway_length_feet NUMBER(6),
    runway_width_feet NUMBER(6),
    runway_surface_type VARCHAR(40),
    airport_id VARCHAR(50) REFERENCES ntsb_airport(airport_id),
    PRIMARY KEY (runway_id,airport_id)
);
