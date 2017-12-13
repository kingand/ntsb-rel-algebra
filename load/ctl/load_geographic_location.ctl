options (skip=1)
load data
    infile "../data/geographic_location.csv"
    badfile "../tmp/geographic_location.bad"
    discardfile  ""../tmp/geographic_location.dsc"
    into table ntsb_geo_location
    fields terminated by "|"
    (
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir
    )
