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
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    geo_location_lat_deg NUMBER(2,10) REFERENCES ntsb_geo_location(geo_location_lat_deg),
    geo_location_lat_dir VARCHAR(1) REFERENCES ntsb_geo_location(geo_location_lat_dir),
    geo_location_lon_deg NUMBER(3,10) REFERENCES ntsb_geo_location(geo_location_lon_deg),
    geo_location_lon_dir VARCHAR(1) REFERENCES ntsb_geo_location(geo_location_lon_dir),
    flt_itin_departure_time TIMESTAMP WITH TIME ZONE REFERENCES ntsb_flight_itinerary(flt_itin_departure_time),
    flt_itin_aircr_serial_num VARCHAR(30) REFERENCES ntsb_flight_itinerary(aircr_serial_num),
    flt_itin_aircr_mfrr VARCHAR(30) REFERENCES ntsb_flight_itinerary(aircr_mfrr),
    PRIMARY KEY (evt_number)
);
