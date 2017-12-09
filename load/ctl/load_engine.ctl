options (skip=1)
load data
    infile "../data/engine.csv"
    badfile "../tmp/engine.bad"
    discardfile  ""../tmp/engine.dsc"
    into table employee
    fields terminated by "|"
    (
        eng_mfrr,
        eng_serial_num,
        eng_model,
        eng_mfr_date,
        eng_rated_pwr,
        eng_rated_pwr_unit,
        eng_tot_hr_count,
        eng_last_insp_t_elap,
        eng_last_overh_t_elap,
        eng_type
    )
