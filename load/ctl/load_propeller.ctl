options (skip=1)
load data
    infile "../data/propeller.csv"
    badfile "../tmp/propeller.bad"
    discardfile  ""../tmp/propeller.dsc"
    into table ntsb_propeller
    fields terminated by "|"
    (
        propeller_type,
        propeller_manufacturer,
        propeller_model
    )
