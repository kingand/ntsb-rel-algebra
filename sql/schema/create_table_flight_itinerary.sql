CREATE TABLE ntsb_flight_itinerary(
    flight_itin_id VARCHAR(30),
    flight_departure_time TIMESTAMP WITH TIME ZONE,
    flight_plan_activated_flag NUMBER(1),
    aircr_id NUMBER(5) REFERENCES ntsb_aircraft(aircr_id),
    departure_airport_id VARCHAR(10) REFERENCES ntsb_airport(airport_id),
    destination_airport_id VARCHAR(10) REFERENCES ntsb_airport(airport_id),
    PRIMARY KEY (flight_itin_id,aircr_id)
);
