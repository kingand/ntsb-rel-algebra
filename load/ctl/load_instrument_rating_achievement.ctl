options (skip=1)
load data
    infile "../data/instrument_rating_achievement.csv"
    badfile "../tmp/instrument_rating_achievement.bad"
    discardfile  ""../tmp/instrument_rating_achievement.dsc"
    into table employee
    fields terminated by "|"
    (
        instr_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
