options (skip=1)
load data
    infile "../data/engine_installation.csv"
    badfile "../tmp/engine_installation.bad"
    discardfile  ""../tmp/engine_installation.dsc"
    into table employee
    fields terminated by "|"
    (
        eng_mfrr,
        eng_serial_num,
        aircr_serial_num,
        aircr_mfrr,
        eng_num
    )
