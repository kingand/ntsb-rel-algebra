DECLARE
BEGIN
 ops.go(
     ops.filter('ntsb_engine', 'eng_type=''Reciprocating''','Recip_Eng')
  );

  ops.go(
      ops.project('Recip_Eng', 'eng_mfrr, eng_serial_num', 'ID_Recip_Eng' )
  )

ops.go(
    ops.divide('ntsb_engine_installation', 'ID_Recip_Eng', 'ID_Recip_Eng_Inst')
)

ops.go(
    ops.mjoin('ntsb_aircraft', 'ID_Recip_Eng_Inst', 'aircr_id', 'aircr_id', 'Aircr_with_Recip')  )
)

ops.go(
    ops.minus('ntsb_aircraft', 'Aircr_with_Recip', 'Aircr_without_Recip')
)
END;
/