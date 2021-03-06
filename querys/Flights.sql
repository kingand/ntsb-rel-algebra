DECLARE
BEGIN
ops.go(
    ops.reduce_ra('ntsb_flight_itinerary', 'departure_airport_id', 'Dept_Airport_ID')
);

ops.go(
    ops.reduce_ra('ntsb_flight_itinerary', 'destination_airport_id', 'Dest_Airport_ID')
);

ops.go(
    ops.times_ra('Dept_Airport_ID', 'Dest_Airport_ID', 'Dept_Dest_Airport_ID_pair')
);

ops.go(
    ops.filter_ra('Dept_Dest_Airport_ID_pair', 'departure_airport_id <> destination_airport_id', 'Dept_Dest_Airport_ID_not_eq')
);

ops.go(
    ops.filter_ra('Dept_Dest_Airport_ID_pair', 'departure_airport_id = destination_airport_id', 'Dept_Dest_Airport_ID_eq')
);

ops.go(
    ops.group_ra('Dept_Dest_Airport_ID_not_eq', ops.allcols('Dept_Dest_Airport_ID_not_eq'), 'flight_category=''round robin'',count=count(*)', 'Count_RR_flights')
);

ops.go(
    ops.group_ra('Dept_Dest_Airport_ID_eq', ops.allcols('Dept_Dest_Airport_ID_eq'), 'flight_category=''not round robin'',count=count(*)', 'Count_Not_RR_flights')
);

ops.go(
    ops.reduce_ra('Count_RR_flights', 'flight_category', 'count', 'RR_Flight_Count')
);

ops.go(
    ops.reduce_ra('Count_Not_RR_flights', 'flight_category', 'count', 'Not_RR_Flight_Count')
);

ops.go(
    ops.union_ra('RR_Flight_Count', 'Not_RR_Flight_Count', 'Flight_Category_w_Count')
);
END;
/
