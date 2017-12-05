CREATE TABLE ntsb_pilot_cert_ach(
    pilot_cert_type VARCHAR(40) REFERENCES ntsb_pilot_cert(pilot_cert_type),
    crew_mem_first_name VARCHAR(30) REFERENCES ntsb_crew_member(crew_mem_first_name),
    crew_mem_last_name VARCHAR(30) REFERENCES ntsb_crew_member(crew_mem_last_name),
    PRIMARY KEY (pilot_cert_type,crew_mem_first_name,crew_mem_last_name)
);
