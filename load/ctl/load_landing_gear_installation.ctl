options (skip=1)
load data
    infile "../data/landing_gear_installation.csv"
    badfile "../tmp/landing_gear_installation.bad"
    discardfile  ""../tmp/landing_gear_installation.dsc"
    into table employee
    fields terminated by "|"
    (
        landing_gear_type,
        aircr_serial_num,
        aircr_mfrr
    )
