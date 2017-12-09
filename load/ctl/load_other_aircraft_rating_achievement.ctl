options (skip=1)
load data
    infile "../data/other_aircraft_rating_achievement.csv"
    badfile "../tmp/other_aircraft_rating_achievement.bad"
    discardfile  ""../tmp/other_aircraft_rating_achievement.dsc"
    into table employee
    fields terminated by "|"
    (
        otr_aircr_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
