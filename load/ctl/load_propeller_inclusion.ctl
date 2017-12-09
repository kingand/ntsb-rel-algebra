load data
    infile "../data/propeller_inclusion.csv"
    into table employee
    fields terminated by "|"
    (
        propeller_manufacturer,
        propeller_model,
        aircr_serial_num,
        aircr_mfrr,
        propeller_num
    )
