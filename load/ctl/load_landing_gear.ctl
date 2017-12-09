load data
    infile "../data/landing_gear.csv"
    into table employee
    fields terminated by "|"
    (
        landing_gear_type
    )
