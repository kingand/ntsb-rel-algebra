load data
    infile "../data/airplane_rating.csv"
    into table employee
    fields terminated by "|"
    (
        airpl_rating_name
    )
