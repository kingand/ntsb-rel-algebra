load data
    infile "../data/engine_installation.csv"
    into table employee
    fields terminated by "|"
    (
        eng_mfrr,
        eng_serial_num,
        aircr_serial_num,
        aircr_mfrr,
        eng_num
    )
