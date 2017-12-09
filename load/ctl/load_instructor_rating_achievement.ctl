options (skip=1)
load data
    infile "../data/instructor_rating_achievement.csv"
    badfile "../tmp/instructor_rating_achievement.bad"
    discardfile  ""../tmp/instructor_rating_achievement.dsc"
    into table ntsb_instruct_rating_ach
    fields terminated by "|"
    (
        instruct_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
