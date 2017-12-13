options (skip=1)
load data
    infile "../data/instructor_rating.csv"
    badfile "../tmp/instructor_rating.bad"
    discardfile  ""../tmp/instructor_rating.dsc"
    into table ntsb_instruct_rating
    fields terminated by "|"
    (
        instruct_rating_name
    )
