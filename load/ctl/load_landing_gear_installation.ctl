options (skip=1)
load data
    infile "../data/landing_gear_installation.csv"
    badfile "../tmp/landing_gear_installation.bad"
    discardfile  ""../tmp/landing_gear_installation.dsc"
    into table ntsb_landing_gear_install
    fields terminated by "|"
    (
        landing_gear_type,
        landing_gear_retr_flag,
        aircr_serial_num,
        aircr_mfrr
    )
