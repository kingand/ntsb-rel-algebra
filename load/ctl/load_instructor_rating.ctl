load data
    infile "../data/instructor_rating.csv"
    into table employee
    fields terminated by "|"
    (
        instruct_rating_name
    )
