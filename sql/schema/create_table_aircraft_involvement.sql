CREATE TABLE ntsb_aircr_involv_wreck(
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    geo_location_latitude VARCHAR(30) REFERENCES ntsb_geo_location(geo_location_latitude),
    geo_location_longitude VARCHAR(30) REFERENCES ntsb_geo_location(geo_location_longitude),
    aircr_damage VARCHAR(40),
    aircr_fire VARCHAR(40),
    aircr_explosion VARCHAR(40),
    PRIMARY KEY (aircr_serial_num,aircr_mfrr,geo_location_latitude,geo_location_longitude)
);
