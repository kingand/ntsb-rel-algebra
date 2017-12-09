options (skip=1)
load data
    infile "../data/airplane_rating_achievement.csv"
    badfile "../tmp/airplane_rating_achievement.bad"
    discardfile  ""../tmp/airplane_rating_achievement.dsc"
    into table employee
    fields terminated by "|"
    (
        airpl_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
