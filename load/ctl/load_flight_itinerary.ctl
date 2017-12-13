options (skip=1)
load data
    infile "../data/flight_itinerary.csv"
    badfile "../tmp/flight_itinerary.bad"
    discardfile  ""../tmp/flight_itinerary.dsc"
    into table ntsb_flight_itinerary
    fields terminated by "|"
    (
        flight_itin_id,
        flight_departure_time,
        flight_plan_activated_flag,
        aircr_serial_num,
        aircr_mfrr,
        departure_airport_id,
        destination_airport_id
    )
