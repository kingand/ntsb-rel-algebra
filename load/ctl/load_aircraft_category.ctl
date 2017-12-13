options (skip=1)
load data
    infile "../data/aircraft_category.csv"
    badfile "../tmp/aircraft_category.bad"
    discardfile  ""../tmp/aircraft_category.dsc"
    into table ntsb_aircraft_category
    fields terminated by "|"
    (
        aircr_category_name
    )
