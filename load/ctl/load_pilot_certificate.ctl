load data
    infile "../data/pilot_certificate.csv"
    into table employee
    fields terminated by "|"
    (
        pilot_cert_type
    )
