

CREATE	TABLE	SNP (
	snp_id				int			NOT NULL ,
	avg_heterozygosity	real		NULL ,
	het_se				real		NULL ,
	create_time			timestamptz	NULL ,
	last_updated_time	timestamptz	NULL ,
	CpG_code			smallint	NULL ,
	tax_id				int			NOT NULL ,
	validation_status	smallint	NULL ,
	exemplar_subsnp_id	int			NOT NULL ,
	univar_id			int			NOT NULL ,
	cnt_subsnp			smallint	NOT NULL ,
	map_property		smallint	NULL
)
;


CREATE	TABLE	RemapLoc (
	snp_type			varchar(2)	NOT NULL ,
	snp_id				int			NOT NULL ,
	ctg_id				int			NOT NULL ,
	asn_from			int			NOT NULL ,
	asn_to				int			NOT NULL ,
	lf_ngbr				int			NOT NULL ,
	rf_ngbr				int			NOT NULL ,
	lc_ngbr				int			NOT NULL ,
	rc_ngbr				int			NOT NULL ,
	loc_type			smallint	NOT NULL ,
	phys_pos_from		int			NULL ,
	phys_pos			varchar(32)	NULL ,
	snp_bld_id			int			NOT NULL ,
	last_updated_time	timestamptz	NOT NULL ,
	process_status		smallint	NOT NULL ,
	orientation			smallint	NOT NULL ,
	allele				varchar(1024)	NULL ,
	loc_sts_uid			int			NULL ,
	aln_quality			float		NULL ,
	num_mism			int			NULL ,
	num_del				int			NULL ,
	num_ins				int			NULL
	)
;


CREATE  TABLE   b126_SNPContigLocusId_36_1 (
	snp_id				int			NOT NULL ,
	contig_acc			varchar(15)	NOT NULL ,
	contig_ver			smallint	NOT NULL ,
	asn_from			int			NULL ,
	asn_to				int			NULL ,
	locus_id			int			NOT NULL ,
	locus_symbol		varchar(50)	NULL ,
	mrna_acc			varchar(15)	NULL ,
	mrna_ver			smallint	NULL ,
	protein_acc			varchar(15)	NULL ,
	protein_ver			smallint	NULL ,
	fxn_class			smallint	NOT NULL ,
	reading_frame		smallint	NULL ,
	allele				varchar(25)	NULL ,
	residue				varchar(5)  NULL ,
	aa_position			int			NULL ,
	build_id			varchar(10)	NOT NULL ,
	ctg_id				int			NOT NULL
)
;


CREATE  TABLE   SubSNP (
	subsnp_id			int			NOT NULL ,
	known_snp_handle	varchar(20)	NULL ,
	known_snp_loc_id	varchar(64)	NULL ,
	known_snp_loc_id_upp varchar(64) NULL ,
	batch_id			int			NOT NULL ,
	loc_snp_id			varchar(64)	NULL ,
	loc_snp_id_upp		varchar(64)	NULL ,
	synonym_names		varchar(255) NULL ,
	loc_sts_id			varchar(64)	NULL ,
	loc_sts_id_upp		varchar(64)	NULL ,
	segregate			char(1)		NOT NULL ,
	indiv_homozygosity_detected char(1) NULL ,
	PCR_confirmed_ind	char(1)		NULL ,
	gene_name			varchar(64)	NULL ,
	sequence_len		int			NULL ,
	samplesize			int			NULL ,
	EXPRESSED_SEQUENCE_ind char(1)	NULL ,
	SOMATIC_ind			char(1)		NULL ,
	sub_locus_id		int			NULL ,
	create_time			timestamptz	NULL ,
	last_updated_time	timestamptz	NULL ,
	ancestral_allele	varchar(255) NULL ,
	CpG_code			smallint	NULL ,
	variation_id		int			NULL ,
	top_or_bot_strand	char(1)		NULL ,
	validation_status	smallint	NULL ,
	snp_id				int			NULL ,
	tax_id				int			NOT NULL ,
	chr_id				smallint	NULL
)
;


CREATE  TABLE   SubSNPSeq5_ins (
	subsnp_id			int			NOT NULL ,
	type				smallint	NOT NULL ,
	line_num			smallint	NOT NULL ,
	line				varchar(255) NOT NULL
)
;



CREATE  TABLE   SubSNPSeq3_ins (
	subsnp_id			int			NOT NULL ,
	type				smallint	NOT NULL ,
	line_num			smallint	NOT NULL ,
	line				varchar(255) NOT NULL
)
;


CREATE	TABLE	FreqSummaryBySsPop (
	subsnp_id			int			NOT NULL ,
	pop_id				int			NOT NULL ,
	source				varchar(1)	NOT NULL ,
	chr_cnt				int			NOT NULL ,
	ind_cnt				int			NOT NULL ,
	non_founder_ind_cnt	int			NOT NULL ,
	chisq				real		NULL ,
	df					smallint	NULL ,
	hwp					real		NULL ,
	het					real		NULL ,
	het_se				real		NULL ,
	last_updated_time	timestamptz	NOT NULL
)
;


CREATE  TABLE   Population (
	pop_id				int			NOT NULL ,
	handle				varchar(20)	NOT NULL ,
	loc_pop_id			varchar(64)	NOT NULL ,
	loc_pop_id_upp		varchar(64)	NOT NULL ,
	create_time			timestamptz	NULL ,
	last_updated_time	timestamptz	NULL ,
	src_id				int			NULL
)
;


CREATE  TABLE   SubPop (
	batch_id			int			NOT NULL ,
	subsnp_id			int			NOT NULL ,
	pop_id				int			NOT NULL ,
	type				char(3)		NOT NULL ,
	samplesize			int			NOT NULL ,
	submitted_strand_code smallint	NULL ,
	submitted_rs		int			NULL ,
	allele_flag			smallint	NULL ,
	ambiguity_status	smallint	NULL ,
	sub_heterozygosity	real		NULL ,
	est_heterozygosity	real		NULL ,
	est_het_se_sq		real		NULL ,
	last_updated_time	timestamptz	NOT NULL ,
	observed			varchar(255)	NULL ,
	sub_het_se_sq		real		NULL ,
	subpop_id			int			NOT NULL
)
;


CREATE  TABLE   SubPopAllele (
	batch_id			int			NOT NULL ,
	subsnp_id			int			NOT NULL ,
	pop_id				int			NOT NULL ,
	allele				char(1)		NOT NULL ,
	other				varchar(255)	NULL ,
	freq				real		NULL ,
	cnt_int				int			NULL ,
	freq_min			real		NULL ,
	freq_max			real		NULL ,
	data_src			varchar(6)	NULL ,
	type				char(3)		NULL ,
	last_updated_time	timestamptz	NULL ,
	allele_flag			smallint	NULL ,
	cnt					real		NULL ,
	allele_id			int			NULL ,
	subpop_id			int			NOT NULL
)
;
