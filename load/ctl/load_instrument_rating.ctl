load data
    infile "../data/instrument_rating.csv"
    into table employee
    fields terminated by "|"
    (
        instr_rating_name
    )
