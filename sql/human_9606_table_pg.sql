CREATE TABLE AlleleFreqBySsPop (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE AlleleFreqBySsPop_rs_pop (
	snp_id int NOT NULL ,
	pop_id int NOT NULL ,
	af_cnt_sum float NULL 
) 
;
CREATE TABLE Batch (
	batch_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	loc_batch_id varchar (64)  NOT NULL ,
	loc_batch_id_upp varchar (64)  NOT NULL ,
	batch_type char (3)  NOT NULL ,
	status smallint NULL ,
	simul_sts_status smallint NOT NULL ,
	moltype varchar (8)  NOT NULL ,
	method_id int NOT NULL ,
	samplesize int NULL ,
	synonym_type varchar (255)  NULL ,
	submitted_time timestamptz NOT NULL ,
	linkout_url varchar (255)  NULL ,
	pop_id int NULL ,
	last_updated_time timestamptz NULL ,
	success_rate_int int NULL ,
	build_id int NULL ,
	tax_id int NOT NULL ,
	ss_cnt int NULL 
) 
;
CREATE TABLE BatchCita (
	batch_id int NOT NULL ,
	position int NOT NULL ,
	pub_id int NOT NULL ,
	citation varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchCommLine (
	batch_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchCultivar (
	batch_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchMeExLine (
	batch_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchPrivLine (
	batch_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchStrain (
	batch_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE BatchValCode (
	batch_id int NOT NULL ,
	validation_status smallint NOT NULL 
) 
;
CREATE TABLE Contact (
	batch_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	name varchar (255)  NOT NULL ,
	fax varchar (255)  NULL ,
	phone varchar (255)  NULL ,
	email varchar (255)  NULL ,
	lab varchar (255)  NULL ,
	institution varchar (255)  NULL ,
	address varchar (255)  NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE FreqSummaryBySsPop (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	source varchar (1)  NOT NULL ,
	chr_cnt int NOT NULL ,
	ind_cnt int NOT NULL ,
	non_founder_ind_cnt int NOT NULL ,
	chisq real NULL ,
	df smallint NULL ,
	hwp real NULL ,
	het real NULL ,
	het_se real NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE GeneIdToName (
	locus_id int NOT NULL ,
	locus_symbol varchar (64)  NOT NULL ,
	locus_name varchar (255)  NULL ,
	tax_id int NOT NULL ,
	last_update_time timestamptz NOT NULL 
) 
;
CREATE TABLE GtyFreqBySsPop (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE GtyFreqBySsPop_Message (
	ss int NOT NULL ,
	pid int NOT NULL ,
	error_msg varchar (20)  NOT NULL ,
	ind_id int NULL ,
	create_time timestamptz NULL ,
	batch_id int NULL 
) 
;
CREATE TABLE GtyFreqBySsPop_bad (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE Hap (
	hap_id int NOT NULL ,
	hapset_id int NOT NULL ,
	loc_hap_id varchar (30)  NOT NULL ,
	inference_class_cd smallint NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	sample_count int NULL ,
	pattern varchar (255)  NULL 
) 
;
CREATE TABLE HapInd (
	ind_id int NOT NULL ,
	chr_id int NOT NULL ,
	hap_src_code char (1)  NULL ,
	hap_id int NOT NULL 
) 
;
CREATE TABLE HapInferenceClassCode (
	code smallint NOT NULL ,
	abbrev varchar (4)  NULL ,
	descrip varchar (255)  NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE HapMapClassCode (
	code smallint NOT NULL ,
	abbrev varchar (20)  NOT NULL ,
	descrip varchar (255)  NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE HapSet (
	hapset_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	hapset_name varchar (30)  NOT NULL ,
	method_id int NOT NULL ,
	pub_id int NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	comment varchar (255)  NULL 
) 
;
CREATE TABLE HapSetSnpList (
	hapset_id int NOT NULL ,
	snp_order int NOT NULL ,
	subsnp_id int NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE HapSnpAllele (
	hap_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	snp_allele char (1)  NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE IndGrpCode (
	code smallint NOT NULL ,
	name varchar (32)  NOT NULL ,
	descrip varchar (255)  NOT NULL 
) 
;
CREATE TABLE IndivAlias (
	src_id int NOT NULL ,
	src_ind_id varchar (64)  NOT NULL ,
	alias varchar (64)  NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE IndivBySource (
	ind_id int NOT NULL ,
	src_id int NOT NULL ,
	src_ind_id varchar (64)  NOT NULL ,
	create_time timestamptz NOT NULL ,
	src_ind_grp varchar (64)  NULL 
) 
;
CREATE TABLE IndivSourceCode (
	code int NOT NULL ,
	name varchar (22)  NOT NULL ,
	descrip varchar (255)  NULL ,
	create_time timestamptz NOT NULL ,
	src_type varchar (10)  NULL ,
	display_order smallint NULL 
) 
;
CREATE TABLE Individual (
	ind_id int NOT NULL ,
	descrip varchar (255)  NULL ,
	create_time timestamptz NOT NULL ,
	tax_id int NULL ,
	ind_grp smallint NULL 
) 
;
CREATE TABLE Individual_hla (
	ind_id int NOT NULL ,
	loc_ind_id varchar (64)  NOT NULL ,
	loc_ind_id_upp varchar (64)  NOT NULL ,
	pop_id int NOT NULL ,
	create_time timestamptz NULL ,
	update_time timestamptz NULL 
) 
;
CREATE TABLE Log_delBatch (
	issue_time timestamptz NOT NULL ,
	issue_user varchar (20)  NOT NULL ,
	cmd varchar (255)  NOT NULL 
) 
;
CREATE TABLE MD5InProcess (
	md5 char (32)  NULL ,
	pid int NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE MisMatchSnpFreq (
	m_gi int NOT NULL ,
	m_asn_from int NOT NULL ,
	g_gi int NULL ,
	g_asn_from int NULL ,
	m_base char (1)  NOT NULL ,
	g_base char (1)  NOT NULL ,
	g_ori_minus int NULL ,
	snp_id int NOT NULL ,
	contig_allele varchar (1024)  NULL ,
	orien_snp2contig smallint NOT NULL ,
	snpAllele varchar (255)  NOT NULL ,
	freq numeric(4, 2) NULL 
) 
;
CREATE TABLE ModelInfo (
	ctg_id int NULL ,
	tr_acc varchar (32)  NOT NULL ,
	tr_ver int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_stop int NOT NULL ,
	tr_start int NOT NULL ,
	tr_stop int NOT NULL ,
	tr_orient smallint NOT NULL ,
	has_RNA smallint NOT NULL ,
	has_RefSeq smallint NOT NULL 
) 
;
CREATE TABLE NonfounderGty (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	ped_id int NOT NULL ,
	ind_id int NOT NULL ,
	unigty_id int NULL ,
	ma_or_pa char (2)  NULL ,
	founder_ind_id int NOT NULL ,
	founder_unigty_id int NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE OmimVarLocusIdSNP (
	omim_id int NOT NULL ,
	locus_id int NOT NULL ,
	omimvar_id char (4)  NOT NULL ,
	locus_symbol char (10)  NOT NULL ,
	var1 char (2)  NOT NULL ,
	aa_position int NOT NULL ,
	var2 char (2)  NOT NULL ,
	var_class int NOT NULL ,
	snp_id int NOT NULL 
) 
;
CREATE TABLE Pedigree (
	ped_id numeric(7, 0) NOT NULL ,
	curator varchar (12)  NOT NULL ,
	curator_ped_id varchar (12)  NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE PedigreeIndividual (
	ped_id decimal(7, 0) NOT NULL ,
	ind_id int NOT NULL ,
	ma_ind_id int NULL ,
	pa_ind_id int NULL ,
	sex char (1)  NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE PipelineIn (
	snp_type char (2)  NOT NULL ,
	snp_id int NOT NULL ,
	input_time timestamptz NOT NULL ,
	inproc_time timestamptz NOT NULL 
) 
;
CREATE TABLE PopLine (
	pop_id int NOT NULL ,
	line_num int NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE PopMandLine (
	pop_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE Population (
	pop_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	loc_pop_id varchar (64)  NOT NULL ,
	loc_pop_id_upp varchar (64)  NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL ,
	src_id int NULL 
) 
;
CREATE TABLE RemapInf (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NULL 
) 
;
CREATE TABLE RemapLoc (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	phys_pos varchar (32)  NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE RsMergeArch (
	rsHigh int NOT NULL ,
	rsLow int NOT NULL ,
	build_id smallint NOT NULL ,
	orien smallint NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	rsCurrent int NULL ,
	orien2Current smallint NULL 
) 
;
CREATE TABLE RsMergeArch_reversal (
	rsHigh int NOT NULL ,
	rsLow int NOT NULL ,
	build_id smallint NOT NULL ,
	orien smallint NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	rsCurrent int NULL ,
	orien2Current smallint NULL 
) 
;
CREATE TABLE RsSplitArch (
	rs_2_split int NOT NULL ,
	rs_new_split int NOT NULL ,
	split_build_id int NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE RsSplitArch_ssLink (
	rs_2_split int NOT NULL ,
	rs_new_split int NOT NULL ,
	ss_moved int NOT NULL ,
	split_build_id int NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SNP (
	snp_id int NOT NULL ,
	avg_heterozygosity real NULL ,
	het_se real NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL ,
	CpG_code smallint NULL ,
	tax_id int NOT NULL ,
	validation_status smallint NULL ,
	exemplar_subsnp_id int NOT NULL ,
	univar_id int NOT NULL ,
	cnt_subsnp smallint NOT NULL ,
	map_property smallint NULL 
) 
;
CREATE TABLE SNP3D (
	snp_id int NOT NULL ,
	protein_acc char (10)  NOT NULL ,
	master_gi int NOT NULL ,
	neighbor_gi int NOT NULL ,
	aa_position int NOT NULL ,
	var_res char (1)  NOT NULL ,
	contig_res char (1)  NOT NULL ,
	neighbor_res char (1)  NOT NULL ,
	neighbor_pos int NOT NULL ,
	var_color int NOT NULL ,
	var_label int NOT NULL 
) 
;
CREATE TABLE SNPAlleleFreq (
	snp_id int NOT NULL ,
	allele_id int NOT NULL ,
	chr_cnt float NULL ,
	freq float NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SNPAncestralAllele (
	snp_id int NOT NULL ,
	ancestral_allele_id int NOT NULL 
) 
;
CREATE TABLE SNPGtyFreq (
	snp_id int NOT NULL ,
	unigty_id int NOT NULL ,
	ind_cnt float NULL ,
	freq float NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SNPHWProb (
	snp_id int NOT NULL ,
	df smallint NULL ,
	chisq real NULL ,
	hwp real NULL ,
	ind_cnt smallint NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE SNPHapMapPriority (
	snp_id int NOT NULL ,
	priority_code int NULL 
) 
;
CREATE TABLE SNPHistory (
	snp_id int NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NOT NULL ,
	history_create_time timestamptz NULL 
) 
;
CREATE TABLE SNPIndGtyFlag (
	snp_id int NOT NULL ,
	ind_id smallint NOT NULL ,
	gty_flag smallint NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SNPIndGty_new (
	snp_id int NOT NULL ,
	ind_id int NULL ,
	gty_flag int NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE SNPSubSNPLink (
	subsnp_id int NOT NULL ,
	snp_id int NOT NULL ,
	substrand_reversed_flag smallint NOT NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL ,
	build_id int NULL ,
	comment varchar (255)  NULL 
) 
;
CREATE TABLE SNPSubSNPLinkHistory (
	subsnp_id int NOT NULL ,
	snp_id int NOT NULL ,
	build_id int NOT NULL ,
	history_create_time timestamptz NOT NULL ,
	link_create_time timestamptz NULL ,
	link_last_updated_time timestamptz NULL ,
	orien smallint NULL ,
	build_id_when_history_made int NULL 
) 
;
CREATE TABLE SNPVal (
	batch_id int NOT NULL ,
	snp_id int NOT NULL 
) 
;
CREATE TABLE SNP_bitfield (
	snp_id int NOT NULL ,
	link_prop smallint NULL ,
	gene_prop smallint NULL ,
	map_prop smallint NULL ,
	freq_prop smallint NULL ,
	gty_prop smallint NULL ,
	phenotype_prop smallint NULL ,
	hapmap_prop smallint NULL ,
	quality_check smallint NULL ,
	variation_class smallint NOT NULL 
) 
;
CREATE TABLE SnpInSts (
	sts_uid int NOT NULL ,
	tax_id int NULL ,
	snp_id int NOT NULL ,
	create_time timestamptz NULL 
) 
;
CREATE TABLE SnpPidAcc (
	pid int NOT NULL ,
	accession varchar (15)  NULL ,
	accession_ver int NULL ,
	tax_id int NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubInd (
	batch_id int NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE SubIndGtyConflict (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	ind_id int NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubPop (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	type char (3)  NOT NULL ,
	samplesize int NOT NULL ,
	submitted_strand_code smallint NULL ,
	submitted_rs int NULL ,
	allele_flag smallint NULL ,
	ambiguity_status smallint NULL ,
	sub_heterozygosity real NULL ,
	est_heterozygosity real NULL ,
	est_het_se_sq real NULL ,
	last_updated_time timestamptz NOT NULL ,
	observed varchar (255)  NULL ,
	sub_het_se_sq real NULL ,
	subpop_id int IDENTITY (1, 1) NOT NULL 
) 
;
CREATE TABLE SubPopAllele (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele char (1)  NOT NULL ,
	other varchar (255)  NULL ,
	freq real NULL ,
	cnt_int int NULL ,
	freq_min real NULL ,
	freq_max real NULL ,
	data_src varchar (6)  NULL ,
	type char (3)  NULL ,
	last_updated_time timestamptz NULL ,
	allele_flag smallint NULL ,
	cnt real NULL ,
	allele_id int NULL ,
	subpop_id int NOT NULL 
) 
;
CREATE TABLE SubPopGty (
	subpop_id int NOT NULL ,
	gty_id int NOT NULL ,
	gty_str varchar (64)  NOT NULL ,
	cnt real NULL ,
	freq real NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubPopRsMerge (
	subpop_id int NOT NULL ,
	submitted_rs int NOT NULL ,
	current_rs int NOT NULL ,
	orien smallint NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubSNP (
	subsnp_id int NOT NULL ,
	known_snp_handle varchar (20)  NULL ,
	known_snp_loc_id varchar (64)  NULL ,
	known_snp_loc_id_upp varchar (64)  NULL ,
	batch_id int NOT NULL ,
	loc_snp_id varchar (64)  NULL ,
	loc_snp_id_upp varchar (64)  NULL ,
	synonym_names varchar (255)  NULL ,
	loc_sts_id varchar (64)  NULL ,
	loc_sts_id_upp varchar (64)  NULL ,
	segregate char (1)  NOT NULL ,
	indiv_homozygosity_detected char (1)  NULL ,
	PCR_confirmed_ind char (1)  NULL ,
	gene_name varchar (64)  NULL ,
	sequence_len int NULL ,
	samplesize int NULL ,
	EXPRESSED_SEQUENCE_ind char (1)  NULL ,
	SOMATIC_ind char (1)  NULL ,
	sub_locus_id int NULL ,
	create_time timestamptz NULL ,
	last_updated_time timestamptz NULL ,
	ancestral_allele varchar (255)  NULL ,
	CpG_code smallint NULL ,
	variation_id int NULL ,
	top_or_bot_strand char (1)  NULL ,
	validation_status smallint NULL ,
	snp_id int NULL ,
	tax_id int NOT NULL ,
	chr_id smallint NULL 
) 
;
CREATE TABLE SubSNPAcc_ins (
	subsnp_id int NOT NULL ,
	acc_type_ind char (1)  NOT NULL ,
	acc_part varchar (16)  NOT NULL ,
	acc_ver int NULL 
) 
;
CREATE TABLE SubSNPCommLine_ins (
	subsnp_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL 
) 
;
CREATE TABLE SubSNPDeletedBySubmitter (
	subsnp_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	loc_snp_id_upp varchar (64)  NOT NULL ,
	comment_id smallint NOT NULL ,
	reload_time timestamptz NULL ,
	create_time timestamptz NOT NULL ,
	delete_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubSNPGtyProbe (
	subsnp_id int NOT NULL ,
	batch_id int NOT NULL ,
	pop_id int NULL ,
	probe_id int NOT NULL 
) 
;
CREATE TABLE SubSNPGtyProbe_old (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	probe_id int NOT NULL 
) 
;
CREATE TABLE SubSNPMdFailLn (
	subsnp_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL 
) 
;
CREATE TABLE SubSNPNoVariSeq (
	subsnp_id int NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL 
) 
;
CREATE TABLE SubSNPSeq3_ins (
	subsnp_id int NOT NULL ,
	type smallint NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL 
) 
;
CREATE TABLE SubSNPSeq5_ins (
	subsnp_id int NOT NULL ,
	type smallint NOT NULL ,
	line_num smallint NOT NULL ,
	line varchar (255)  NOT NULL 
) 
;
CREATE TABLE SubSNPSeqPos (
	subsnp_id int NOT NULL ,
	contig_acc varchar (20)  NOT NULL ,
	contig_pos int NOT NULL ,
	chr varchar (2)  NULL ,
	upstream_len int NOT NULL ,
	downstream_len int NOT NULL ,
	last_update_time timestamptz NOT NULL 
) 
;
CREATE TABLE SubSNP_top_or_bot (
	subsnp_id int NOT NULL ,
	top_or_bot char (1)  NULL ,
	step smallint NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE SubmittedIndividual (
	submitted_ind_id int NOT NULL ,
	pop_id int NOT NULL ,
	loc_ind_id_upp varchar (64)  NOT NULL ,
	ind_id int NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NULL ,
	tax_id int NOT NULL ,
	loc_ind_alias varchar (64)  NULL ,
	loc_ind_id varchar (64)  NULL ,
	loc_ind_grp varchar (32)  NULL ,
	ploidy smallint NULL 
) 
;
CREATE TABLE Synonym (
	subsnp_id int NOT NULL ,
	type varchar (64)  NOT NULL ,
	name varchar (64)  NULL 
) 
;
CREATE TABLE UnigeneSnp (
	gi int NOT NULL ,
	snp_id int NOT NULL ,
	unigene_cid int NOT NULL ,
	last_updated_time timestamptz NULL 
) 
;
CREATE TABLE b125_Alignments_35_1 (
	aln_set int NOT NULL ,
	aln_id int NOT NULL ,
	tr_acc varchar (32)  NOT NULL ,
	tr_ver int NOT NULL ,
	ctg_name varchar (32)  NOT NULL ,
	ctg_acc varchar (32)  NOT NULL ,
	ctg_ver int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_stop int NOT NULL ,
	tr_start int NOT NULL ,
	tr_stop int NOT NULL ,
	tr_orient char (1)  NOT NULL 
) 
;
CREATE TABLE b125_ContigExon_35_1 (
	mrna_acc varchar (32)  NOT NULL ,
	ctg_id int NOT NULL ,
	exon_number int NOT NULL ,
	exon_start int NOT NULL ,
	exon_end int NOT NULL ,
	seg_start int NOT NULL ,
	seg_end int NOT NULL ,
	exon_orientation smallint NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE b125_ContigInfo_34_3 (
	ctg_id int NOT NULL ,
	tax_id int NOT NULL ,
	contig_acc varchar (32)  NOT NULL ,
	contig_ver smallint NULL ,
	contig_name varchar (32)  NOT NULL ,
	contig_chr varchar (32)  NULL ,
	contig_start int NULL ,
	contig_end int NULL ,
	orient smallint NULL ,
	contig_gi int NULL ,
	group_term varchar (32)  NULL ,
	group_label varchar (32)  NULL ,
	contig_label varchar (32)  NULL ,
	build_id int NULL ,
	build_ver int NULL ,
	last_updated_time timestamptz NOT NULL ,
	placement_status smallint NULL 
) 
;
CREATE TABLE b125_ContigInfo_35_1 (
	ctg_id int NOT NULL ,
	tax_id int NOT NULL ,
	contig_acc varchar (32)  NOT NULL ,
	contig_ver smallint NULL ,
	contig_name varchar (32)  NOT NULL ,
	contig_chr varchar (32)  NULL ,
	contig_start int NULL ,
	contig_end int NULL ,
	orient smallint NULL ,
	contig_gi int NULL ,
	group_term varchar (32)  NULL ,
	group_label varchar (32)  NULL ,
	contig_label varchar (32)  NULL ,
	build_id int NULL ,
	build_ver int NULL ,
	last_updated_time timestamptz NOT NULL ,
	placement_status smallint NULL 
) 
;
CREATE TABLE b125_MapLinkInfo_35_1 (
	gi int NOT NULL ,
	accession varchar (32)  NULL ,
	accession_ver int NULL ,
	accession_db_cd smallint NULL 
) 
;
CREATE TABLE b125_MapLink_35_1 (
	snp_type char (2)  NOT NULL ,
	snp_id int NOT NULL ,
	gi int NOT NULL ,
	accession_how_cd smallint NULL ,
	offset int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	build_id int NULL ,
	process_time timestamptz NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (512)  NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b125_ModelInfo_35_1 (
	ctg_id int NULL ,
	tr_gi int NULL ,
	tr_acc varchar (32)  NOT NULL ,
	tr_ver int NULL ,
	ctg_start int NOT NULL ,
	ctg_stop int NOT NULL ,
	tr_start int NOT NULL ,
	tr_stop int NOT NULL ,
	tr_orient smallint NOT NULL ,
	has_RNA smallint NULL ,
	has_RefSeq smallint NULL ,
	donor varchar (3)  NULL ,
	acceptor varchar (3)  NULL ,
	identity_pct real NULL ,
	alignment varchar (1024)  NULL 
) 
;
CREATE TABLE b125_ProjectedSNP_35_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	tr_gi int NULL ,
	db_how_cd int NOT NULL ,
	offset int NULL ,
	asn_to int NULL ,
	loc_type smallint NOT NULL ,
	orientation int NULL 
) 
;
CREATE TABLE b125_ProteinInfo_34_3 (
	tax_id int NOT NULL ,
	gene_id int NULL ,
	ref_seq_status varchar (32)  NULL ,
	rna_accs varchar (32)  NULL ,
	rna_ver int NULL ,
	rna_gi int NOT NULL ,
	prot_accs varchar (32)  NULL ,
	prot_ver int NULL ,
	prot_gi int NULL ,
	nucl_accs varchar (32)  NULL ,
	nucl_ver int NULL ,
	nucl_gi int NOT NULL ,
	start int NOT NULL ,
	stop int NOT NULL ,
	orient smallint NULL 
) 
;
CREATE TABLE b125_ProteinInfo_35_1 (
	tax_id int NOT NULL ,
	gene_id int NULL ,
	ref_seq_status varchar (32)  NULL ,
	rna_accs varchar (32)  NULL ,
	rna_ver int NULL ,
	rna_gi int NOT NULL ,
	prot_accs varchar (32)  NULL ,
	prot_ver int NULL ,
	prot_gi int NULL ,
	nucl_accs varchar (32)  NULL ,
	nucl_ver int NULL ,
	nucl_gi int NOT NULL ,
	start int NOT NULL ,
	stop int NOT NULL ,
	orient smallint NULL 
) 
;
CREATE TABLE b125_SNPContigLoc_34_3 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	phys_pos varchar (32)  NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b125_SNPContigLoc_35_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	phys_pos varchar (32)  NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b125_SNPContigLocusId_34_3 (
	snp_id int NOT NULL ,
	contig_acc varchar (15)  NOT NULL ,
	contig_ver smallint NOT NULL ,
	asn_from int NULL ,
	asn_to int NULL ,
	locus_id int NOT NULL ,
	locus_symbol varchar (50)  NULL ,
	mrna_acc varchar (15)  NULL ,
	mrna_ver smallint NULL ,
	protein_acc varchar (15)  NULL ,
	protein_ver smallint NULL ,
	fxn_class smallint NOT NULL ,
	reading_frame smallint NULL ,
	allele varchar (25)  NULL ,
	residue varchar (5)  NULL ,
	aa_position int NULL ,
	build_id varchar (10)  NOT NULL ,
	ctg_id int NOT NULL 
) 
;
CREATE TABLE b125_SNPContigLocusId_35_1 (
	snp_id int NOT NULL ,
	contig_acc varchar (15)  NOT NULL ,
	contig_ver smallint NOT NULL ,
	asn_from int NULL ,
	asn_to int NULL ,
	locus_id int NOT NULL ,
	locus_symbol varchar (50)  NULL ,
	mrna_acc varchar (15)  NULL ,
	mrna_ver smallint NULL ,
	protein_acc varchar (15)  NULL ,
	protein_ver smallint NULL ,
	fxn_class smallint NOT NULL ,
	reading_frame smallint NULL ,
	allele varchar (25)  NULL ,
	residue varchar (5)  NULL ,
	aa_position int NULL ,
	build_id varchar (10)  NOT NULL ,
	ctg_id int NOT NULL 
) 
;
CREATE TABLE b125_SNPMapInfo_34_3 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NULL 
) 
;
CREATE TABLE b125_SNPMapInfo_35_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NOT NULL 
) 
;
CREATE TABLE b126_ContigExon_36_1 (
	feature_name varchar (32)  NOT NULL ,
	mrna_acc varchar (32)  NOT NULL ,
	mrna_ver smallint NOT NULL ,
	mrna_gi int NOT NULL ,
	ctg_id int NOT NULL ,
	exon_number int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_end int NOT NULL ,
	seg_start int NULL ,
	seg_end int NULL ,
	orientation smallint NOT NULL ,
	create_time timestamptz NOT NULL ,
	type varchar (32)  NOT NULL ,
	status smallint NOT NULL 
) 
;
CREATE TABLE b126_ContigExon_36_1_new (
	feature_name varchar (32)  NOT NULL ,
	mrna_acc varchar (32)  NOT NULL ,
	mrna_ver smallint NOT NULL ,
	mrna_gi int NOT NULL ,
	ctg_id int NOT NULL ,
	seg_no int NOT NULL ,
	exon_enum int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_end int NOT NULL ,
	seg_start int NULL ,
	seg_end int NULL ,
	orientation smallint NOT NULL ,
	create_time timestamptz NOT NULL ,
	type varchar (32)  NOT NULL ,
	status smallint NOT NULL 
) 
;
CREATE TABLE b126_ContigFeature_36_1 (
	feature_name varchar (32)  NOT NULL ,
	mrna_acc varchar (32)  NOT NULL ,
	mrna_ver smallint NOT NULL ,
	mrna_gi int NOT NULL ,
	ctg_id int NOT NULL ,
	exon_number int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_end int NOT NULL ,
	seg_start int NULL ,
	seg_end int NULL ,
	orientation smallint NOT NULL ,
	create_time timestamptz NOT NULL ,
	type varchar (32)  NOT NULL ,
	status smallint NOT NULL 
) 
;
CREATE TABLE b126_ContigFeatures_36_1_new (
	feature_name varchar (32)  NOT NULL ,
	mrna_acc varchar (32)  NOT NULL ,
	mrna_ver smallint NOT NULL ,
	mrna_gi int NOT NULL ,
	ctg_id int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_end int NOT NULL ,
	orientation smallint NOT NULL ,
	create_time timestamptz NOT NULL ,
	type varchar (32)  NOT NULL ,
	status smallint NOT NULL 
) 
;
CREATE TABLE b126_ContigInfo_1_1 (
	ctg_id int NOT NULL ,
	tax_id int NOT NULL ,
	contig_acc varchar (32)  NOT NULL ,
	contig_ver smallint NULL ,
	contig_name varchar (32)  NOT NULL ,
	contig_chr varchar (32)  NULL ,
	contig_start int NULL ,
	contig_end int NULL ,
	orient smallint NULL ,
	contig_gi int NULL ,
	group_term varchar (32)  NULL ,
	group_label varchar (32)  NULL ,
	contig_label varchar (32)  NULL ,
	build_id int NULL ,
	build_ver int NULL ,
	last_updated_time timestamptz NOT NULL ,
	placement_status smallint NOT NULL 
) 
;
CREATE TABLE b126_ContigInfo_35_1 (
	ctg_id int NOT NULL ,
	tax_id int NOT NULL ,
	contig_acc varchar (32)  NOT NULL ,
	contig_ver smallint NULL ,
	contig_name varchar (32)  NOT NULL ,
	contig_chr varchar (32)  NULL ,
	contig_start int NULL ,
	contig_end int NULL ,
	orient smallint NULL ,
	contig_gi int NULL ,
	group_term varchar (32)  NULL ,
	group_label varchar (32)  NULL ,
	contig_label varchar (32)  NULL ,
	build_id int NULL ,
	build_ver int NULL ,
	last_updated_time timestamptz NOT NULL ,
	placement_status smallint NULL 
) 
;
CREATE TABLE b126_ContigInfo_36_1 (
	ctg_id int NOT NULL ,
	tax_id int NOT NULL ,
	contig_acc varchar (32)  NOT NULL ,
	contig_ver smallint NULL ,
	contig_name varchar (32)  NOT NULL ,
	contig_chr varchar (32)  NULL ,
	contig_start int NULL ,
	contig_end int NULL ,
	orient smallint NULL ,
	contig_gi int NULL ,
	group_term varchar (32)  NULL ,
	group_label varchar (32)  NULL ,
	contig_label varchar (32)  NULL ,
	build_id int NULL ,
	build_ver int NULL ,
	last_updated_time timestamptz NOT NULL ,
	placement_status smallint NOT NULL 
) 
;
CREATE TABLE b126_MapLinkInfo_35_1 (
	gi int NOT NULL ,
	accession varchar (32)  NULL ,
	accession_ver int NULL ,
	accession_db_cd smallint NULL 
) 
;
CREATE TABLE b126_MapLinkInfo_36_1 (
	gi int NOT NULL ,
	accession varchar (32)  NULL ,
	accession_ver int NULL ,
	accession_db_cd smallint NULL 
) 
;
CREATE TABLE b126_MapLink_36_1 (
	snp_type char (2)  NOT NULL ,
	snp_id int NOT NULL ,
	gi int NOT NULL ,
	accession_how_cd smallint NULL ,
	offset int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	build_id int NULL ,
	process_time timestamptz NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (512)  NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b126_ModelInfo_36_1 (
	ctg_id int NULL ,
	tr_gi int NULL ,
	tr_acc varchar (32)  NOT NULL ,
	tr_ver int NULL ,
	ctg_start int NOT NULL ,
	ctg_stop int NOT NULL ,
	tr_start int NOT NULL ,
	tr_stop int NOT NULL ,
	tr_orient smallint NOT NULL ,
	has_RNA smallint NULL ,
	has_RefSeq smallint NULL ,
	donor varchar (3)  NULL ,
	acceptor varchar (3)  NULL ,
	identity_pct real NULL ,
	alignment varchar (1024)  NULL 
) 
;
CREATE TABLE b126_Ngbr_fix (
	snp_id int NOT NULL ,
	lf_ngbr int NULL ,
	rf_ngbr int NULL 
) 
;
CREATE TABLE b126_ProteinInfo_36_1 (
	tax_id int NOT NULL ,
	gene_id int NULL ,
	ref_seq_status varchar (32)  NULL ,
	rna_accs varchar (32)  NULL ,
	rna_ver int NULL ,
	rna_gi int NOT NULL ,
	prot_accs varchar (32)  NULL ,
	prot_ver int NULL ,
	prot_gi int NULL ,
	nucl_accs varchar (32)  NULL ,
	nucl_ver int NULL ,
	nucl_gi int NOT NULL ,
	start int NOT NULL ,
	stop int NOT NULL ,
	orient smallint NULL ,
	comment varchar (64)  NULL 
) 
;
CREATE TABLE b126_SNPContigLoc_1_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b126_SNPContigLoc_35_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b126_SNPContigLoc_36_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	asn_to int NOT NULL ,
	lf_ngbr int NOT NULL ,
	rf_ngbr int NOT NULL ,
	lc_ngbr int NOT NULL ,
	rc_ngbr int NOT NULL ,
	loc_type smallint NOT NULL ,
	phys_pos_from int NULL ,
	snp_bld_id int NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	process_status smallint NOT NULL ,
	orientation smallint NOT NULL ,
	allele varchar (1024)  NULL ,
	loc_sts_uid int NULL ,
	aln_quality float NULL ,
	num_mism int NULL ,
	num_del int NULL ,
	num_ins int NULL 
) 
;
CREATE TABLE b126_SNPContigLocusId_35_1 (
	snp_id int NOT NULL ,
	contig_acc varchar (15)  NOT NULL ,
	contig_ver smallint NOT NULL ,
	asn_from int NULL ,
	asn_to  int NULL ,
	locus_id int NOT NULL ,
	locus_symbol varchar (50)  NULL ,
	mrna_acc varchar (15)  NULL ,
	mrna_ver smallint NULL ,
	protein_acc varchar (15)  NULL ,
	protein_ver smallint NULL ,
	fxn_class smallint NOT NULL ,
	reading_frame smallint NULL ,
	allele varchar (25)  NULL ,
	residue varchar (5)  NULL ,
	aa_position int NULL ,
	build_id varchar (10)  NOT NULL ,
	ctg_id int NOT NULL 
) 
;
CREATE TABLE b126_SNPContigLocusId_36_1 (
	snp_id int NOT NULL ,
	contig_acc varchar (15)  NOT NULL ,
	contig_ver smallint NOT NULL ,
	asn_from int NULL ,
	asn_to  int NULL ,
	locus_id int NOT NULL ,
	locus_symbol varchar (50)  NULL ,
	mrna_acc varchar (15)  NULL ,
	mrna_ver smallint NULL ,
	protein_acc varchar (15)  NULL ,
	protein_ver smallint NULL ,
	fxn_class smallint NOT NULL ,
	reading_frame smallint NULL ,
	allele varchar (25)  NULL ,
	residue varchar (5)  NULL ,
	aa_position int NULL ,
	build_id varchar (10)  NOT NULL ,
	ctg_id int NOT NULL 
) 
;
CREATE TABLE b126_SNPMapInfo_1_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	placed_cnt int NOT NULL ,
	grouped_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NULL 
) 
;
CREATE TABLE b126_SNPMapInfo_35_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	placed_cnt int NOT NULL ,
	grouped_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NULL 
) 
;
CREATE TABLE b126_SNPMapInfo_36_1 (
	snp_type varchar (2)  NOT NULL ,
	snp_id int NOT NULL ,
	chr_cnt int NOT NULL ,
	contig_cnt int NOT NULL ,
	loc_cnt int NOT NULL ,
	weight int NOT NULL ,
	hap_cnt int NOT NULL ,
	placed_cnt int NOT NULL ,
	grouped_cnt int NOT NULL ,
	unplaced_cnt int NOT NULL ,
	md5 char (32)  NULL ,
	assembly varchar (32)  NULL 
) 
;
CREATE TABLE b126_SharedPositions (
	ctg_id int NOT NULL ,
	asn_from int NOT NULL ,
	cnt int NULL 
) 
;
CREATE TABLE dn_IND_batchCount (
	batch_id int NOT NULL ,
	pop_id int NOT NULL ,
	ss_cnt int NOT NULL ,
	rs_cnt int NOT NULL ,
	ind_cnt int NOT NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE dn_IND_batch_pop (
	batch_id smallint NOT NULL ,
	pop_id int NOT NULL ,
	update_time timestamptz NOT NULL 
) 
;
CREATE TABLE dn_batchCount (
	batch_id int NOT NULL ,
	ss_cnt int NOT NULL ,
	rs_cnt int NOT NULL ,
	rs_validated_cnt int NOT NULL ,
	create_time timestamptz NOT NULL ,
	pop_cnt int NULL ,
	ind_cnt int NULL 
) 
;
CREATE TABLE dn_handleCount (
	handle varchar (20)  NOT NULL ,
	batch_type char (3)  NOT NULL ,
	ss_cnt int NOT NULL ,
	rs_cnt int NULL ,
	rs_validated_cnt int NULL ,
	create_time timestamptz NOT NULL 
) 
;
CREATE TABLE dn_snpFxnCnt (
	build_id int NOT NULL ,
	fxn_class smallint NULL ,
	snp_cnt int NOT NULL ,
	gene_cnt int NOT NULL ,
	create_time timestamptz NOT NULL ,
	last_updated_time timestamptz NOT NULL ,
	tax_id int NOT NULL 
) 
;
CREATE TABLE dn_table_rowcount (
	tabname varchar (64)  NOT NULL ,
	row_cnt int NOT NULL ,
	build_id int NOT NULL ,
	update_time timestamptz NOT NULL ,
	rows_in_spaceused int NULL ,
	reserved_KB_spaceused int NULL ,
	data_KB_spaceused int NULL ,
	index_size_KB_spaceused int NULL ,
	unused_KB_spaceused int NULL 
) 
;
CREATE TABLE ftp_SNP_chr (
	snp_id int NOT NULL ,
	contig_chr varchar (32)  NULL 
) 
;
CREATE TABLE mf_HM_missing_rs (
	snp_id int NOT NULL 
) 
;
CREATE TABLE mf_HM_redun (
	snp_id int NOT NULL 
) 
;
CREATE TABLE mf_b125_transcriptoverlap_SNPs (
	moltype varchar (8)  NOT NULL ,
	snp_id int NOT NULL ,
	ctg_id int NOT NULL ,
	ctg_start int NOT NULL ,
	ctg_end int NOT NULL ,
	feature_name varchar (32)  NOT NULL ,
	type varchar (32)  NOT NULL 
) 
;
CREATE TABLE mf_chr1_orderedsnps (
	snp_id int NULL ,
	order int NULL 
) 
;
CREATE TABLE mf_reclust (
	rsHigh int NOT NULL ,
	rsCurrent int NULL ,
	orien2Current smallint NULL 
) 
;
CREATE TABLE mt_SNPIndGtyFlag_NN (
	snp_id int NOT NULL ,
	ind_id smallint NOT NULL ,
	gty_flag smallint NOT NULL ,
	last_updated_time timestamptz NOT NULL 
) 
;
CREATE TABLE mt_SubInd_ILLUMINA (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE mt_SubInd_sspop (
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL 
) 
;
CREATE TABLE mt_running_status (
	procname varchar (64)  NULL ,
	step varchar (32)  NULL ,
	start_time timestamptz NULL ,
	comment varchar (1000)  NULL 
) 
;
CREATE TABLE strainConv (
	strain_curated varchar (255)  NULL ,
	strain_entry varchar (255)  NULL ,
	cell_line varchar (255)  NULL ,
	tax_id int NOT NULL ,
	crdate timestamptz NULL ,
	modate timestamptz NULL 
) 
;
CREATE TABLE t_Batch_b4_HapMap_Phase1_2 (
	batch_id int NOT NULL ,
	handle varchar (20)  NOT NULL ,
	loc_batch_id varchar (64)  NOT NULL ,
	loc_batch_id_upp varchar (64)  NOT NULL ,
	batch_type char (3)  NOT NULL ,
	status smallint NULL ,
	simul_sts_status smallint NOT NULL ,
	moltype varchar (8)  NOT NULL ,
	method_id int NOT NULL ,
	samplesize int NULL ,
	synonym_type varchar (255)  NULL ,
	submitted_time timestamptz NOT NULL ,
	linkout_url varchar (255)  NULL ,
	pop_id int NULL ,
	last_updated_time timestamptz NULL ,
	success_rate_int int NULL ,
	build_id int NULL ,
	tax_id int NOT NULL ,
	ss_cnt int NULL 
) 
;
CREATE TABLE t_HM_assayLSID (
	batch_id int NOT NULL ,
	ss int NOT NULL ,
	assayLSID varchar (128)  NOT NULL 
) 
;
CREATE TABLE t_HM_protocal (
	center varchar (32)  NOT NULL ,
	protLSID varchar (255)  NOT NULL ,
	method varchar (64)  NOT NULL 
) 
;
CREATE TABLE t_HM_sub_count (
	fname varchar (32)  NULL ,
	ind_cnt int NULL ,
	rs_cnt int NULL ,
	gty_cnt int NULL 
) 
;
CREATE TABLE t_HM_sub_count2 (
	fname varchar (32)  NULL ,
	ind_cnt int NULL ,
	rs_cnt int NULL ,
	gty_cnt int NULL 
) 
;
CREATE TABLE t_ILMN_AlleleFreqBySsPop (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_ILMN_GtyFreqBySsPop (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_ILMN_SubInd (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_all_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_all_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_all_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_assayLSID (
	batch_id int NOT NULL ,
	ss int NOT NULL ,
	assayLSID varchar (128)  NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr10_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr10_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr10_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr10_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr10_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr10_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr10_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr10_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr10_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr11_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr11_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr11_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr11_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr11_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr11_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr11_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr11_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr11_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr12_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr12_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr12_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr12_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr12_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr12_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr12_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr12_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr12_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr13_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr13_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr13_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr13_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr13_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr13_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr13_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr13_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr13_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr14_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr14_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr14_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr14_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr14_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr14_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr14_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr14_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr14_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr15_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr15_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr15_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr15_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr15_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr15_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr15_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr15_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr15_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr16_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr16_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr16_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr16_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr16_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr16_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr16_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr16_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr16_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr17_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr17_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr17_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr17_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr17_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr17_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr17_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr17_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr17_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr18_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr18_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr18_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr18_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr18_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr18_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr18_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr18_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr18_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr19_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr19_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr19_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr19_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr19_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr19_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr19_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr19_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr19_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr1_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr1_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr1_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr1_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr1_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr1_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr1_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr1_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr1_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr20_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr20_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr20_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr20_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr20_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr20_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr20_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr20_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr20_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr21_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr21_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr21_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr21_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr21_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr21_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr21_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr21_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr21_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr22_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr22_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr22_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr22_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr22_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr22_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr22_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr22_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr22_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr2_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr2_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr2_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr2_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr2_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr2_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr2_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr2_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr2_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr3_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr3_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr3_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr3_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr3_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr3_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr3_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr3_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr3_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr4_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr4_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr4_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr4_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr4_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr4_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr4_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr4_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr4_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr5_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr5_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr5_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr5_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr5_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr5_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr5_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr5_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr5_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr6_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr6_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr6_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr6_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr6_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr6_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr6_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr6_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr6_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr7_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr7_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr7_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr7_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr7_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr7_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr7_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr7_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr7_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr8_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr8_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr8_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr8_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr8_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr8_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr8_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr8_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr8_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr9_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr9_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr9_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr9_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr9_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr9_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chr9_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chr9_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chr9_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrX_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrX_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrX_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrX_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrX_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrX_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrX_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrX_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrX_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_CEU (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrY_CEU_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_CEU_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrY_CEU_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_CHB (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrY_CHB_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_CHB_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrY_CHB_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_JPT (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrY_JPT_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_JPT_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrY_JPT_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_YRI (
	batch_id smallint NOT NULL ,
	subsnp_id int NOT NULL ,
	submitted_ind_id smallint NOT NULL ,
	submitted_strand_code int NULL ,
	allele_flag smallint NULL ,
	gty_id int NULL ,
	submitted_rs int NULL 
) 
;
CREATE TABLE t_gty_chrY_YRI_af (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	allele_id int NOT NULL ,
	source varchar (2)  NOT NULL ,
	cnt real NOT NULL ,
	freq real NOT NULL 
) 
;
CREATE TABLE t_gty_chrY_YRI_gf (
	batch_id int NOT NULL ,
	subsnp_id int NOT NULL ,
	pop_id int NOT NULL ,
	unigty_id int NOT NULL ,
	source varchar (1)  NULL ,
	cnt real NULL ,
	freq real NULL 
) 
;
CREATE TABLE t_gty_chrY_YRI_rs (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_rs_1 (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_rs_2 (
	rs int NOT NULL 
) 
;
CREATE TABLE t_gty_rsnull (
	rs int NOT NULL 
) 
;
CREATE TABLE t_hwp_cc (
	ss int NOT NULL ,
	pop int NOT NULL ,
	chr_cnt float NULL 
) 
;
CREATE TABLE t_hwp_df (
	ss int NOT NULL ,
	pop int NOT NULL ,
	df int NULL 
) 
;
CREATE TABLE t_hwp_expfreq (
	ss int NOT NULL ,
	pop int NOT NULL ,
	ale1 int NOT NULL ,
	ale2 int NOT NULL ,
	exp_gf real NULL 
) 
;
CREATE TABLE t_hwp_ic (
	ss int NOT NULL ,
	pop int NOT NULL ,
	ind_cnt float NULL ,
	source varchar (1)  NULL 
) 
;
CREATE TABLE t_rs_MHC_Exon_Centric_Panel_CEU_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Exon_Centric_Panel_CHB_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Exon_Centric_Panel_JPT_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Exon_Centric_Panel_YRI_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Mapping_Panel_CEU_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Mapping_Panel_CHB_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Mapping_Panel_JPT_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE t_rs_MHC_Mapping_Panel_YRI_Genotypes (
	rs int NOT NULL 
) 
;
CREATE TABLE uniStsLoc (
	sts_uid int NULL ,
	sts_name varchar (50)  NULL ,
	tax_id int NULL ,
	sts_weight int NULL ,
	contig_acc varchar (15)  NULL ,
	contig_ver smallint NULL ,
	contig_from int NULL ,
	contig_to int NULL ,
	create_time timestamptz NULL 
) 
;
