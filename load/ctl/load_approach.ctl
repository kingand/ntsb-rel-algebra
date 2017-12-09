load data
    infile "../data/approach.csv"
    into table employee
    fields terminated by "|"
    (
        runway_id,
        event_number,
        ifr_approach_type,
        vfr_approach_type
    )
