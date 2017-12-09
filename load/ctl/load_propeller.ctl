load data
    infile "../data/propeller.csv"
    into table employee
    fields terminated by "|"
    (
        propeller_type,
        propeller_manufacturer,
        propeller_model
    )
