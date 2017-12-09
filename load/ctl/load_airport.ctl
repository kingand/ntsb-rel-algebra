options (skip=1)
load data
    infile "../data/airport.csv"
    badfile "../tmp/airport.bad"
    discardfile  ""../tmp/airport.dsc"
    into table ntsb_airport
    fields terminated by "|"
    (
        airport_id,
        airport_name,
        airport_elevation
    )
