CREATE TABLE ntsb_crew_mem_involv(
    evt_number VARCHAR(40) REFERENCES ntsb_event(evt_number),
    crew_mem_first_name VARCHAR(30),
    crew_mem_last_name VARCHAR(30),
    crew_mem_responsibility VARCHAR(20),
    pilot_in_control_flag NUMBER(1),
    PRIMARY KEY (evt_number,crew_mem_first_name,crew_mem_last_name),
    FOREIGN KEY (
        crew_mem_first_name,
        crew_mem_last_name
    ) REFERENCES ntsb_crew_member(
        crew_mem_first_name,
        crew_mem_last_name
    )
);
