options (skip=1)
load data
    infile "../data/crew_member.csv"
    badfile "../tmp/crew_member.bad"
    discardfile  ""../tmp/crew_member.dsc"
    into table employee
    fields terminated by "|"
    (
        crew_mem_first_name,
        crew_mem_mid_name,
        crew_mem_last_name,
        crew_mem_dob,
        crew_mem_cert_num,
        crew_mem_pilot_info_cert,
        crew_mem_pilot_info_age,
        crew_mem_flt_t_make_model,
        crew_mem_occup,
        crew_mem_med_cert_limit,
        crew_mem_med_cert_spec_iss,
        crew_mem_infl_rest_type,
        crew_mem_stud_endors_type,
        crew_mem_type_ratings_text,
        crew_mem_last_med_date
    )
