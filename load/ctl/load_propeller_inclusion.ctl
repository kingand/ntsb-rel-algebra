options (skip=1)
load data
    infile "../data/propeller_inclusion.csv"
    badfile "../tmp/propeller_inclusion.bad"
    discardfile  ""../tmp/propeller_inclusion.dsc"
    into table ntsb_propeller_inclusion
    fields terminated by "|"
    (
        propeller_manufacturer,
        propeller_model,
        aircr_serial_num,
        aircr_mfrr,
        propeller_num
    )
