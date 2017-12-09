options (skip=1)
load data
    infile "../data/event.csv"
    badfile "../tmp/event.bad"
    discardfile  ""../tmp/event.dsc"
    into table ntsb_event
    fields terminated by "|"
    (
        evt_number,
        evt_datetime timestamp 'YYYY-MM-DD HH:MI:SS TZH:TZM',
        evt_flt_category,
        evt_injury_count,
        evt_severity,
        evt_flt_conduct_under,
        aircr_wt_at_evt,
        met_cond_accident_site,
        met_cond_light,
        evt_on_airpt_flag,
        evt_distance_from_airpt_cent,
        evt_direction_to_airpt,
        evt_flt_segment,
        evt_runway_condition,
        evt_collision_type,
        aircr_serial_num,
        aircr_mfrr,
        geo_location_lat_deg,
        geo_location_lat_dir,
        geo_location_lon_deg,
        geo_location_lon_dir,
        flt_itin_departure_time,
        flt_itin_aircr_serial_num,
        flt_itin_aircr_mfrr
    )
