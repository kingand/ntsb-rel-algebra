options (skip=1)
load data
    infile "../data/pilot_certification_achievement.csv"
    badfile "../tmp/pilot_certification_achievement.bad"
    discardfile  ""../tmp/pilot_certification_achievement.dsc"
    into table employee
    fields terminated by "|"
    (
        pilot_cert_type,
        crew_mem_first_name,
        crew_mem_last_name
    )
