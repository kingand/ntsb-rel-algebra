load data
    infile "../data/airport.csv"
    into table employee
    fields terminated by "|"
    (
        airport_id,
        airport_name,
        airport_elevation
    )
