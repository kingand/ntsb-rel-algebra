CREATE TABLE ntsb_geo_location(
    geo_location_latitude NUMBER(4,10),
    geo_location_longitude NUMBER(4,10),
    event_number VARCHAR(20) REFERENCES ntsb_event(event_number),
    PRIMARY KEY (geo_location_latitude, geo_location_longitude)
);
