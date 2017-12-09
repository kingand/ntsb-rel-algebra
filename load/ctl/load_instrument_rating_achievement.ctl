load data
    infile "../data/instrument_rating_achievement.csv"
    into table employee
    fields terminated by "|"
    (
        instr_rating_name,
        crew_mem_first_name,
        crew_mem_last_name
    )
