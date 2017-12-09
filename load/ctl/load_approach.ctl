options (skip=1)
load data
    infile "../data/approach.csv"
    badfile "../tmp/approach.bad"
    discardfile  ""../tmp/approach.dsc"
    into table ntsb_approach
    fields terminated by "|"
    (
        runway_id,
        event_number,
        ifr_approach_type,
        vfr_approach_type
    )
