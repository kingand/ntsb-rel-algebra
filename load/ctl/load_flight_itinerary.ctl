load data
    infile "../data/flight_itinerary.csv"
    into table employee
    fields terminated by "|"
    (
        flight_departure_time,
        flight_plan_activated_flag,
        aircr_serial_num,
        aircr_mfrr,
        departure_airport_id,
        destination_airport_id
    )
