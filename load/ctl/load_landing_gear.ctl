options (skip=1)
load data
    infile "../data/landing_gear.csv"
    badfile "../tmp/landing_gear.bad"
    discardfile  ""../tmp/landing_gear.dsc"
    into table employee
    fields terminated by "|"
    (
        landing_gear_type
    )
