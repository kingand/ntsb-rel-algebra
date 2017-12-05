CREATE TABLE [dbo].[eADMSPUB_DataDictionary] (
	[Category of Data] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Table] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Column] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ct_name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[code_iaids] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[meaning] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Data Type eADMS] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Length eADMS] [float] NULL ,
	[short_desc] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Question_Def] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Code meaning] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[typeofchange] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Change_notes] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


CREATE TABLE [dbo].[Country] (
	[COUNTRY_CODE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[COUNTRY_NAME] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ct_iaids] (
	[ct_name] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[code_iaids] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[meaning] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[seq] [smallint] NULL ,
	[ntsb_type] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ntsb_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[avn_code] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ntsb_codes_more] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[not_for_ntsb_use] [bit] NULL ,
	[eADMS_use] [bit] NOT NULL ,
	[notes] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ct_seqevt] (
	[code] [int] NOT NULL ,
	[meaning] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[states] (
	[state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[name] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[faa_region] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dt_events] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[col_name] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[code] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NTSB_Admin] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[MKey] [int] NULL ,
	[rec_init_date] [datetime] NULL ,
	[iic_EmpNumber] [int] NULL ,
	[iicn_fname] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[iicn_init] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[iicn_lname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[assigned_date] [datetime] NULL ,
	[iicf_fname] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[iicf_init] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[iicf_lname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rec_stat] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[report_status] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[step_id] [int] NULL ,
	[publish_status] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[downgraded_ind] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[checkout_ind] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_qc_complete] [int] NULL ,
	[p_pub_official] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[p_pub_date] [datetime] NULL ,
	[f_submtd_qc_date] [datetime] NULL ,
	[f_qc_complete] [int] NULL ,
	[submtd_hq_official] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[submtd_hq_date] [datetime] NULL ,
	[f_pub_official] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[f_pub_date] [datetime] NULL ,
	[approval_official] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[approval_date] [datetime] NULL ,
	[qc_cnt] [tinyint] NULL ,
	[lchg_userid] [char] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[aircraft] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[regis_no] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ntsb_no] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_missing] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[far_part] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[flt_plan_filed] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[flight_plan_activated] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[damage] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_fire] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_expl] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_make] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_model] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_series] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_serial_no] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[cert_max_gr_wt] [int] NULL ,
	[acft_category] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[acft_reg_cls] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[homebuilt] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[fc_seats] [int] NULL ,
	[cc_seats] [int] NULL ,
	[pax_seats] [int] NULL ,
	[total_seats] [smallint] NULL ,
	[num_eng] [tinyint] NULL ,
	[fixed_retractable] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type_last_insp] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date_last_insp] [datetime] NULL ,
	[afm_hrs_last_insp] [real] NULL ,
	[afm_hrs] [real] NULL ,
	[elt_install] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[elt_oper] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[elt_aided_loc_ev] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[elt_type] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_acft] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_street] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_country] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[owner_zip] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_individual_name] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_same] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_dba] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_addr_same] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_street] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_country] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_zip] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_code] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[certs_held] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oprtng_cert] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_cert] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_cert_num] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_sched] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_dom_int] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[oper_pax_cargo] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[type_fly] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[second_pilot] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_pt_same_ev] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_apt_id] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_country] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dprt_time] [smallint] NULL ,
	[dprt_timezn] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dest_same_local] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dest_apt_id] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dest_city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dest_state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[dest_country] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phase_flt_spec] [int] NULL ,
	[report_to_icao] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[evacuation] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[afm_hrs_since] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rwy_num] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[rwy_len] [int] NULL ,
	[rwy_width] [int] NULL ,
	[site_seeing] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[air_medical] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_type_flight] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[injury] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[inj_person_category] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[injury_level] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[inj_person_count] [smallint] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[engines] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[eng_no] [smallint] NOT NULL ,
	[eng_type] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[eng_mfgr] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[eng_model] [varchar] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[power_units] [int] NULL ,
	[hp_or_lbs] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL ,
	[carb_fuel_injection] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[propeller_type] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dt_aircraft] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[col_name] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[code] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Occurrences] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[Occurrence_No] [int] NOT NULL ,
	[Occurrence_Code] [int] NULL ,
	[Phase_of_Flight] [int] NULL ,
	[Altitude] [int] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[seq_of_events] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[Occurrence_No] [int] NOT NULL ,
	[seq_event_no] [int] NOT NULL ,
	[group_code] [smallint] NOT NULL ,
	[Subj_Code] [int] NULL ,
	[Cause_Factor] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Modifier_Code] [int] NULL ,
	[Person_Code] [int] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Events_Sequence] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[Occurrence_No] [int] NOT NULL ,
	[Occurrence_Code] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Occurrence_Description] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[phase_no] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[eventsoe_no] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Defining_ev] [bit] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Findings] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[finding_no] [int] NOT NULL ,
	[finding_code] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[finding_description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[category_no] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subcategory_no] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[section_no] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[subsection_no] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[modifier_no] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[Cause_Factor] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[dt_Flight_Crew] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[crew_no] [tinyint] NOT NULL ,
	[col_name] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[code] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[flight_time] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[crew_no] [tinyint] NOT NULL ,
	[flight_type] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[flight_craft] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[flight_hours] [real] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Flight_Crew] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[crew_no] [tinyint] NOT NULL ,
	[crew_category] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_age] [tinyint] NULL ,
	[crew_sex] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_city] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_res_state] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_res_country] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_certf] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[med_crtf_vldty] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[date_lst_med] [datetime] NULL ,
	[crew_rat_endorse] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_inj_level] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[seatbelts_used] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[shldr_harn_used] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[crew_tox_perf] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[seat_occ_pic] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[pc_profession] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bfr] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[bfr_date] [datetime] NULL ,
	[ft_as_of] [datetime] NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[events] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ntsb_no] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_type] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_date] [datetime] NULL ,
	[ev_dow] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_time] [smallint] NULL ,
	[ev_tmzn] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_city] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_state] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_country] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_site_zipcode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_year] [smallint] NULL ,
	[ev_month] [tinyint] NULL ,
	[mid_air] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[on_ground_collision] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[latitude] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[longitude] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[latlong_acq] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[apt_name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_nr_apt_id] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_nr_apt_loc] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[apt_dist] [real] NULL ,
	[apt_dir] [smallint] NULL ,
	[apt_elev] [smallint] NULL ,
	[wx_brief_comp] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[wx_src_iic] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[wx_obs_time] [smallint] NULL ,
	[wx_obs_dir] [smallint] NULL ,
	[wx_obs_fac_id] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[wx_obs_elev] [int] NULL ,
	[wx_obs_dist] [smallint] NULL ,
	[wx_obs_tmzn] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[light_cond] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sky_cond_nonceil] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[sky_nonceil_ht] [int] NULL ,
	[sky_ceil_ht] [int] NULL ,
	[sky_cond_ceil] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[vis_rvr] [real] NULL ,
	[vis_rvv] [smallint] NULL ,
	[vis_sm] [real] NULL ,
	[wx_temp] [smallint] NULL ,
	[wx_dew_pt] [smallint] NULL ,
	[wind_dir_deg] [smallint] NULL ,
	[wind_dir_ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[wind_vel_kts] [tinyint] NULL ,
	[wind_vel_ind] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gust_ind] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[gust_kts] [smallint] NULL ,
	[altimeter] [real] NULL ,
	[wx_dens_alt] [int] NULL ,
	[wx_int_precip] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[metar] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ev_highest_injury] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[inj_f_grnd] [smallint] NULL ,
	[inj_m_grnd] [smallint] NULL ,
	[inj_s_grnd] [smallint] NULL ,
	[inj_tot_f] [smallint] NULL ,
	[inj_tot_m] [smallint] NULL ,
	[inj_tot_n] [smallint] NULL ,
	[inj_tot_s] [smallint] NULL ,
	[inj_tot_t] [smallint] NULL ,
	[invest_agy] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ntsb_docket] [int] NULL ,
	[ntsb_notf_from] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ntsb_notf_date] [datetime] NULL ,
	[ntsb_notf_tm] [smallint] NULL ,
	[fiche_number] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[wx_cond_basic] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[faa_dist_office] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[narratives] (
	[ev_id] [char] (14) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[Aircraft_Key] [int] NOT NULL ,
	[narr_accp] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[narr_accf] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[narr_cause] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[narr_inc] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[lchg_date] [datetime] NULL ,
	[lchg_userid] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[dt_events] ADD 
	CONSTRAINT [DF__dt_events__lchg___1F0EA2DC] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__dt_events__lchg___2002C715] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_dt_events] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[col_name],
		[code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[aircraft] ADD 
	CONSTRAINT [DF__aircraft__lchg_d__139CF030] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__aircraft__lchg_u__14911469] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_aircraft] PRIMARY KEY  CLUSTERED 
	(
		[ev_id],
		[Aircraft_Key]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[injury] ADD 
	CONSTRAINT [DF__injury__lchg_dat__0FCC5F4C] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__injury__lchg_use__10C08385] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_injury] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[inj_person_category],
		[injury_level]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[engines] ADD 
	CONSTRAINT [PK_engines] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[eng_no]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[dt_aircraft] ADD 
	CONSTRAINT [DF__dt_aircra__lchg___69A6B664] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__dt_aircra__lchg___6A9ADA9D] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_dt_aircraft] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[col_name],
		[code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Occurrences] ADD 
	CONSTRAINT [DF__Occurrenc__lchg___045AACA0] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__Occurrenc__lchg___054ED0D9] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_Occurrences] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[Occurrence_No]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[seq_of_events] ADD 
	CONSTRAINT [DF__seq_of_ev__lchg___008A1BBC] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__seq_of_ev__lchg___017E3FF5] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_seq_of_events] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[Occurrence_No],
		[seq_event_no],
		[group_code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Events_Sequence] ADD 
	CONSTRAINT [PK_Events_Sequence] PRIMARY KEY  CLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[Occurrence_No]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Findings] ADD 
	CONSTRAINT [PK_Findings] PRIMARY KEY  CLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[finding_no]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[dt_Flight_Crew] ADD 
	CONSTRAINT [DF__dt_Flight__lchg___78E8F9F4] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__dt_Flight__lchg___79DD1E2D] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_dt_Flight_Crew] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[crew_no],
		[col_name],
		[code]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[flight_time] ADD 
	CONSTRAINT [DF__flight_ti__lchg___75186910] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__flight_ti__lchg___760C8D49] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_flight_time] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[crew_no],
		[flight_type],
		[flight_craft]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[Flight_Crew] ADD 
	CONSTRAINT [DF__Flight_Cr__lchg___7CB98AD8] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__Flight_Cr__lchg___7DADAF11] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_Flight_Crew] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key],
		[crew_no]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[events] ADD 
	CONSTRAINT [DF__events__lchg_dat__22DF33C0] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__events__lchg_use__23D357F9] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_events] PRIMARY KEY  CLUSTERED 
	(
		[ev_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[narratives] ADD 
	CONSTRAINT [DF__narrative__narr___5A6472D4] DEFAULT (null) FOR [narr_accp],
	CONSTRAINT [DF__narrative__narr___5B58970D] DEFAULT (null) FOR [narr_accf],
	CONSTRAINT [DF__narrative__narr___5C4CBB46] DEFAULT (null) FOR [narr_cause],
	CONSTRAINT [DF__narrative__narr___5D40DF7F] DEFAULT (null) FOR [narr_inc],
	CONSTRAINT [DF__narrative__lchg___5E3503B8] DEFAULT (getdate()) FOR [lchg_date],
	CONSTRAINT [DF__narrative__lchg___5F2927F1] DEFAULT (user_name(null)) FOR [lchg_userid],
	CONSTRAINT [PK_narratives] PRIMARY KEY  NONCLUSTERED 
	(
		[ev_id],
		[Aircraft_Key]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[dt_events] ADD 
	CONSTRAINT [FK_dt_events_events] FOREIGN KEY 
	(
		[ev_id]
	) REFERENCES [dbo].[events] (
		[ev_id]
	)
GO

ALTER TABLE [dbo].[aircraft] ADD 
	CONSTRAINT [FK_aircraft_events] FOREIGN KEY 
	(
		[ev_id]
	) REFERENCES [dbo].[events] (
		[ev_id]
	)
GO

ALTER TABLE [dbo].[injury] ADD 
	CONSTRAINT [FK_injury_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[engines] ADD 
	CONSTRAINT [FK_engines_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[dt_aircraft] ADD 
	CONSTRAINT [FK_dt_aircraft_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[Occurrences] ADD 
	CONSTRAINT [FK_Occurrences_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[seq_of_events] ADD 
	CONSTRAINT [FK_seq_of_events_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[Events_Sequence] ADD 
	CONSTRAINT [FK_Events_Sequence_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[Findings] ADD 
	CONSTRAINT [FK_Findings_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[dt_Flight_Crew] ADD 
	CONSTRAINT [FK_dt_Flight_Crew_Flight_Crew] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key],
		[crew_no]
	) REFERENCES [dbo].[Flight_Crew] (
		[ev_id],
		[Aircraft_Key],
		[crew_no]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[flight_time] ADD 
	CONSTRAINT [FK_flight_time_Flight_Crew] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key],
		[crew_no]
	) REFERENCES [dbo].[Flight_Crew] (
		[ev_id],
		[Aircraft_Key],
		[crew_no]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[Flight_Crew] ADD 
	CONSTRAINT [FK_Flight_Crew_aircraft] FOREIGN KEY 
	(
		[ev_id],
		[Aircraft_Key]
	) REFERENCES [dbo].[aircraft] (
		[ev_id],
		[Aircraft_Key]
	)
GO

ALTER TABLE [dbo].[NTSB_Admin] ADD 
	CONSTRAINT [PK_NTSB_Admin] PRIMARY KEY  CLUSTERED 
	(
		[ev_id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NTSB_Admin] ADD 
	CONSTRAINT [FK_NTSB_Admin_events] FOREIGN KEY 
	(
		[ev_id]
	) REFERENCES [dbo].[events] (
		[ev_id]
	)
GO