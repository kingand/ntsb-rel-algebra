load data
    infile "../data/landing_gear_installation.csv"
    into table employee
    fields terminated by "|"
    (
        landing_gear_type,
        aircr_serial_num,
        aircr_mfrr
    )
