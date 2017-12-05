load data
    infile "../data/event.csv"
    into table employee
    fields terminated by "|"
    (
        evt_number,
        evt_date_time,
        evt_flt_category,
        evt_injury_count,
        evt_severity,
        evt_flt_conduct_under,
        aircr_wt_at_evt,
        elt_mounted_flag,
        elt_connected_flag,
        elt_activated_flag,
        elt_aided_in_loc_flag,
        met_cond_accident_site,
        met_cond_light,
        evt_on_airpt_flag,
        evt_distance_from_airpt_cent,
        evt_direction_to_airpt,
        evt_flt_segment
    )
