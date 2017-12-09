options (skip=1)
load data
    infile "../data/engine.csv"
    badfile "../tmp/engine.bad"
    discardfile  ""../tmp/engine.dsc"
    into table ntsb_engine
    fields terminated by "|"
    (
        eng_mfrr,
        eng_serial_num,
        eng_model,
        eng_mfr_date date 'YYYY-MM-DD' null if eng_mfr_date = '0000-00-00',
        eng_rated_pwr,
        eng_rated_pwr_unit,
        eng_tot_hr_count,
        eng_last_insp_t_elap,
        eng_last_overh_t_elap,
        eng_type
    )
