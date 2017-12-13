options (skip=1)
load data
    infile "../data/crew_member_involvement.csv"
    badfile "../tmp/crew_member_involvement.bad"
    discardfile  ""../tmp/crew_member_involvement.dsc"
    into table ntsb_crew_mem_involv
    fields terminated by "|"
    (
        evt_number,
        crew_mem_first_name,
        crew_mem_last_name,
        crew_mem_responsibility,
        pilot_in_control_flag
    )
