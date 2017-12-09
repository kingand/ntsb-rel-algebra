options (skip=1)
load data
    infile "../data/instrument_rating.csv"
    badfile "../tmp/instrument_rating.bad"
    discardfile  ""../tmp/instrument_rating.dsc"
    into table ntsb_instr_rating
    fields terminated by "|"
    (
        instr_rating_name
    )
