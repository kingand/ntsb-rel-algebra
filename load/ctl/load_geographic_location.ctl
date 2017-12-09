options (skip=1)
load data
    infile "../data/geographic_location.csv"
    badfile "../tmp/geographic_location.bad"
    discardfile  ""../tmp/geographic_location.dsc"
    into table employee
    fields terminated by "|"
    (
        geo_location_latitude,
        geo_location_longitude,
        event_number
    )
