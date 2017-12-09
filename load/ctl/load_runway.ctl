load data
    infile "../data/runway.csv"
    into table employee
    fields terminated by "|"
    (
        runway_id,
        runway_length_feet,
        runway_width_feet,
        runway_surface_type,
        airport_id
    )
