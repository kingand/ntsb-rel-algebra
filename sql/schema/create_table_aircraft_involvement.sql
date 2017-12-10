CREATE TABLE ntsb_aircr_involv_wreck(
    aircr_serial_num VARCHAR(30),
    aircr_mfrr VARCHAR(30),
    geo_location_lat_deg NUMBER(2,10),
    geo_location_lat_dir VARCHAR(1),
    geo_location_lon_deg NUMBER(3,10),
    geo_location_lon_dir VARCHAR(1),
    aircr_damage VARCHAR(40),
    aircr_fire VARCHAR(40),
    aircr_explosion VARCHAR(40),
    PRIMARY KEY (
        aircr_serial_num,
        aircr_mfrr,
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
    ),
    FOREIGN KEY (
        aircr_serial_num,
        aircr_mfrr
    ) REFERENCES ntsb_aircraft(
        aircr_serial_num,
        aircr_mfrr
    )
);
