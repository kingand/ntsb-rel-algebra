load data
    infile "../data/pilot_certification_achievement.csv"
    into table employee
    fields terminated by "|"
    (
        pilot_cert_type,
        crew_mem_first_name,
        crew_mem_last_name
    )
