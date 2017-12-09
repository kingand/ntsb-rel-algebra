load data
    infile "../data/other_aircraft_rating.csv"
    into table employee
    fields terminated by "|"
    (
        otr_aircr_rating_name
    )
