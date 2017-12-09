options (skip=1)
load data
    infile "../data/airplane_rating.csv"
    badfile "../tmp/airplane_rating.bad"
    discardfile  ""../tmp/airplane_rating.dsc"
    into table ntsb_airpl_rating
    fields terminated by "|"
    (
        airpl_rating_name
    )
