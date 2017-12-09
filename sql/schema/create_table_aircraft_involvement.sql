CREATE TABLE ntsb_aircr_involv_wreck(
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    geo_location_lat_deg NUMBER(2,10) REFERENCES ntsb_geo_location(geo_location_lat_deg),
    geo_location_lat_dir VARCHAR(1) REFERENCES ntsb_geo_location(geo_location_lat_dir),
    geo_location_lon_deg NUMBER(3,10) REFERENCES ntsb_geo_location(geo_location_lon_deg),
    geo_location_lon_dir VARCHAR(1) REFERENCES ntsb_geo_location(geo_location_lon_dir),
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
    )
);
