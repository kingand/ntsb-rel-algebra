options (skip=1)
load data
    infile "../data/runway.csv"
    badfile "../tmp/runway.bad"
    discardfile  ""../tmp/runway.dsc"
    into table ntsb_runway
    fields terminated by "|"
    (
        runway_id,
        runway_length_feet,
        runway_width_feet,
        runway_surface_type,
        airport_id
    )
