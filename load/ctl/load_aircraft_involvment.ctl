options (skip=1)
load data
    infile "../data/aircraft_involvment.csv"
    badfile "../tmp/aircraft_involvment.bad"
    discardfile  ""../tmp/aircraft_involvment.dsc"
    into table ntsb_aircr_involv_wreck
    fields terminated by "|"
    (
        aircr_serial_num,
        aircr_mfrr,
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir,
        aircr_damage,
        aircr_fire,
        aircr_explosion
    )
