CREATE TABLE ntsb_aircr_involv_wreck(
    aircr_id NUMBER(5) REFERENCES ntsb_aircraft(aircr_id),
    geo_location_lat_deg NUMBER(2,10),
    geo_location_lat_dir VARCHAR(1),
    geo_location_lon_deg NUMBER(3,10),
    geo_location_lon_dir VARCHAR(1),
    aircr_damage VARCHAR(40),
    aircr_fire VARCHAR(40),
    aircr_explosion VARCHAR(40),
    PRIMARY KEY (
        aircr_id,
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir
    ),
    FOREIGN KEY (
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir
    ) REFERENCES ntsb_geo_location(
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir
    )
);
