options (skip=1)
load data
    infile "../data/pilot_certificate.csv"
    badfile "../tmp/pilot_certificate.bad"
    discardfile  ""../tmp/pilot_certificate.dsc"
    into table ntsb_pilot_cert
    fields terminated by "|"
    (
        pilot_cert_type
    )
