options (skip=1)
load data
    infile "../data/other_aircraft_rating.csv"
    badfile "../tmp/other_aircraft_rating.bad"
    discardfile  ""../tmp/other_aircraft_rating.dsc"
    into table employee
    fields terminated by "|"
    (
        otr_aircr_rating_name
    )
