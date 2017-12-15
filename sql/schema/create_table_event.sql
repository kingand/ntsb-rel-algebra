CREATE TABLE ntsb_event(
    evt_number VARCHAR(20),
    evt_datetime TIMESTAMP WITH TIME ZONE,
    evt_flt_category VARCHAR(20),
    evt_injury_count NUMBER(4),
    evt_severity VARCHAR(20),
    evt_flt_conduct_under VARCHAR(30),
    aircr_wt_at_evt NUMBER(8,2),
    met_cond_accident_site VARCHAR(10),
    met_cond_light VARCHAR(20),
    evt_on_airpt_flag NUMBER(1),
    evt_distance_from_airpt_cent NUMBER(4,2),
    evt_direction_to_airpt VARCHAR(20),
    evt_flt_segment VARCHAR(40),
    evt_runway_condition VARCHAR(40),
    evt_collision_type VARCHAR(40),
    aircr_id NUMBER(5),
    geo_location_lat_deg NUMBER(2,10),
    geo_location_lat_dir VARCHAR(1),
    geo_location_lon_deg NUMBER(3,10),
    geo_location_lon_dir VARCHAR(1),
    flt_itin_id VARCHAR(30),
    flt_itin_aircr_serial_num VARCHAR(30),
    flt_itin_aircr_mfrr VARCHAR(30),
    PRIMARY KEY (evt_number),
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
        aircr_id
    ) REFERENCES ntsb_aircraft(
        aircr_id
    ),
    FOREIGN KEY (
        flt_itin_id,
        flt_itin_aircr_serial_num,
        flt_itin_aircr_mfrr
    ) REFERENCES ntsb_flight_itinerary(
        flight_itin_id,
        aircr_id
    )
);
