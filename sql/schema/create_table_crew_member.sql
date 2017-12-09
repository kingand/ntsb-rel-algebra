CREATE TABLE ntsb_crew_member(
    crew_mem_first_name VARCHAR(30),
    crew_mem_mid_name VARCHAR(30),
    crew_mem_last_name VARCHAR(30),
    crew_mem_pilot_info_age NUMBER(3),
    crew_mem_occup VARCHAR(20),
    crew_mem_med_cert_limit VARCHAR(2000),
    crew_mem_med_cert_spec_iss VARCHAR(2000),
    crew_mem_infl_rest_type,
    crew_mem_stud_endors_type,
    crew_mem_type_ratings_text,
    crew_mem_last_med_date DATE,
    PRIMARY KEY (crew_mem_first_name, crew_mem_last_name)
);
