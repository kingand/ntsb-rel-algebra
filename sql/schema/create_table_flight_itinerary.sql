CREATE TABLE ntsb_flight_itinerary(
    flight_departure_time TIMESTAMP WITH TIME ZONE,
    flight_plan_activated_flag NUMBER(1),
    aircr_serial_num VARCHAR(30) REFERENCES ntsb_aircraft(aircr_serial_num),
    aircr_mfrr VARCHAR(30) REFERENCES ntsb_aircraft(aircr_mfrr),
    departure_airport_id VARCHAR(10) REFERENCES ntsb_airport(airport_id),
    destination_airport_id VARCHAR(10) REFERENCES ntsb_airport(airport_id),
    PRIMARY KEY (flight_departure_time,aircr_serial_num,aircr_mfrr)
);
