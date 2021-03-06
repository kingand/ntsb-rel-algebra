CREATE TABLE ntsb_instruct_rating_ach(
    instruct_rating_name VARCHAR(40) REFERENCES ntsb_instruct_rating(instruct_rating_name),
    crew_mem_first_name VARCHAR(30),
    crew_mem_last_name VARCHAR(30),
    PRIMARY KEY (instruct_rating_name,crew_mem_first_name,crew_mem_last_name),
    FOREIGN KEY (
        crew_mem_first_name,
        crew_mem_last_name
    ) REFERENCES ntsb_crew_member(
        crew_mem_first_name,
        crew_mem_last_name
    )
);
