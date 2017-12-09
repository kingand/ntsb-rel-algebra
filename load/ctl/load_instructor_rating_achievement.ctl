load data
    infile "../data/instructor_rating_achievement.csv"
    into table employee
    fields terminated by "|"
    (
        instruct_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
