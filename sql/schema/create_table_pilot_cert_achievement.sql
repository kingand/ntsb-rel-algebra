CREATE TABLE ntsb_pilot_cert_ach(
    pilot_cert_type VARCHAR(40) REFERENCES ntsb_pilot_cert(pilot_cert_type),
    crew_mem_first_name VARCHAR(30),
    crew_mem_last_name VARCHAR(30),
    PRIMARY KEY (pilot_cert_type,crew_mem_first_name,crew_mem_last_name),
    FOREIGN KEY (
        crew_mem_first_name,
        crew_mem_last_name
    ) REFERENCES ntsb_crew_member(
        crew_mem_first_name,
        crew_mem_last_name
    )
);
