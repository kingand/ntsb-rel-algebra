options (skip=1)
load data
    infile "../data/crew_member.csv"
    badfile "../tmp/crew_member.bad"
    discardfile  ""../tmp/crew_member.dsc"
    into table ntsb_crew_member
    fields terminated by "|"
    (
        crew_mem_first_name,
        crew_mem_mid_name,
        crew_mem_last_name,
        crew_mem_pilot_info_age,
        crew_mem_occup,
        crew_mem_med_cert_limit,
        crew_mem_med_cert_spec_iss,
        crew_mem_infl_rest_type,
        crew_mem_stud_endors_type,
        crew_mem_type_ratings_text,
        crew_mem_last_med_date date 'YYYYMMDD' null if crew_mem_last_med_date = '00000000'
    )
