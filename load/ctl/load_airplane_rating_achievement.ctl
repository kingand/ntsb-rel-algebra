load data
    infile "../data/airplane_rating_achievement.csv"
    into table employee
    fields terminated by "|"
    (
        airpl_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
