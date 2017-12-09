options (skip=1)
load data
    infile "../data/aircraft_involvment.csv"
    badfile "../tmp/aircraft_involvment.bad"
    discardfile  ""../tmp/aircraft_involvment.dsc"
    into table employee
    fields terminated by "|"
    (
        aircr_serial_num,
        aircr_mfrr,
        geo_location_latitude,
        geo_location_longitude,
        aircr_damage,
        aircr_fire,
        aircr_explosion
    )
