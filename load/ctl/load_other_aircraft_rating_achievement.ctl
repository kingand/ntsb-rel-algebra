load data
    infile "../data/other_aircraft_rating_achievement.csv"
    into table employee
    fields terminated by "|"
    (
        otr_aircr_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
