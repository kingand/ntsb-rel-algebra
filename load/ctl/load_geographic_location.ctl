load data
    infile "../data/geographic_location.csv"
    into table employee
    fields terminated by "|"
    (
        geo_location_latitude,
        geo_location_longitude,
        event_number
    )
