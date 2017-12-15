DECLARE
BEGIN
 ops.go(
     ops.filter_ra('ntsb_engine', 'eng_type=''Reciprocating''','Recip_Eng')
  );

  ops.go(
      ops.project_ra('Recip_Eng', 'eng_mfrr, eng_serial_num', 'ID_Recip_Eng' )
  );

ops.go(
    ops.divide_ra('ntsb_engine_installation', 'ID_Recip_Eng', 'ID_Recip_Eng_Inst')
);

ops.go(
    ops.mjoin_ra('ntsb_aircraft', 'ID_Recip_Eng_Inst', 'aircr_id', 'aircr_id', 'Aircr_with_Recip')
);

ops.go(
    ops.minus_ra('ntsb_aircraft', 'Aircr_with_Recip', 'Aircr_without_Recip')
);
END;
/
