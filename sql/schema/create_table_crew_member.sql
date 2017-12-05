CREATE TABLE ntsb_crew_member(
    crew_mem_first_name VARCHAR(30),
    crew_mem_mid_name VARCHAR(30),
    crew_mem_last_name VARCHAR(30),
    crew_mem_dob DATE,
    crew_mem_cert_num VARCHAR(30),
    crew_mem_pilot_info_cert VARCHAR(30),
    crew_mem_pilot_info_age NUMBER(3),
    crew_mem_occup VARCHAR(20),
    crew_mem_med_cert_limit VARCHAR(2000),
    crew_mem_med_cert_spec_iss VARCHAR(2000),
    crew_mem_last_med_date DATE,
    crew_mem_deg_injury VARCHAR(20),
    crew_mem_med_cert_validity VARCHAR(20),
    crew_mem_med_cert_type VARCHAR(20),
    PRIMARY KEY (crew_mem_first_name, crew_mem_last_name)
);
