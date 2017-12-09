load data
    infile "../data/crew_member_involvement.csv"
    into table employee
    fields terminated by "|"
    (
        evt_number,
        crew_mem_first_name,
        crew_mem_last_name,
        crew_mem_responsibility,
        pilot_in_control_flag
    )
