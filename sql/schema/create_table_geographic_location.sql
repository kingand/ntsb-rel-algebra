CREATE TABLE ntsb_geo_location(
    geo_location_lat_deg NUMBER(2,10),
    geo_location_lat_dir VARCHAR(1),
    geo_location_lon_deg NUMBER(3,10),
    geo_location_lon_dir VARCHAR(1),
    event_number VARCHAR(20) REFERENCES ntsb_event(event_number),
    PRIMARY KEY (
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir
    )
);
