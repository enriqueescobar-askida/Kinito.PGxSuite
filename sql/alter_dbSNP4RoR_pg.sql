ALTER TABLE ONLY	SNP						RENAME TO		SNPs
;
ALTER TABLE ONLY	SNPs					ADD PRIMARY KEY (snp_id)
;
ALTER TABLE ONLY	SNPs					RENAME			snp_id			TO	id
;

ALTER TABLE ONLY	b126_SNPContigLocusId_36_1	RENAME TO	SNPContigLocusIds
;
ALTER TABLE ONLY	SNPContigLocusIds			ADD			id serial
;
ALTER TABLE ONLY	SNPContigLocusIds			ADD FOREIGN KEY (snp_id)	REFERENCES	SNPs
;

ALTER TABLE ONLY	SubSNP					RENAME TO		SubSNPs
;
ALTER TABLE ONLY	SubSNPs					ADD PRIMARY KEY (subsnp_id)
;
ALTER TABLE ONLY	SubSNPs					RENAME			subsnp_id		TO	id
;
ALTER TABLE ONLY	SubSNPs					ADD FOREIGN KEY (snp_id)		REFERENCES	SNPs
;

--ALTER TABLE ONLY	SubSNPSeq5_ins		ADD FOREIGN KEY (subsnp_id) REFERENCES SubSNPs;
--ALTER TABLE ONLY	SubSNPSeq5_ins		RENAME TO		SubSNPSeq5ins;

--ALTER TABLE ONLY	SubSNPSeq3_ins		ADD FOREIGN KEY (subsnp_id) REFERENCES SubSNPs;
--ALTER TABLE ONLY	SubSNPSeq3_ins		RENAME TO		SubSNPSeq3ins;

ALTER TABLE ONLY	Population				RENAME TO		Populations
;
ALTER TABLE ONLY	Populations				ADD PRIMARY KEY (pop_id)
;
ALTER TABLE ONLY	Populations				RENAME			pop_id			TO	id
;

ALTER TABLE ONLY	FreqSummaryBySsPop		RENAME TO		FreqSummaryBySsPops
;
ALTER TABLE ONLY	FreqSummaryBySsPops		ADD				id serial
;
ALTER TABLE ONLY	FreqSummaryBySsPops		RENAME			pop_id			TO	population_id
;
ALTER TABLE ONLY	FreqSummaryBySsPops		ADD FOREIGN KEY (population_id)	REFERENCES	Populations
;
ALTER TABLE ONLY	FreqSummaryBySsPops		ADD FOREIGN KEY (subsnp_id)		REFERENCES	SubSNPs
;

ALTER TABLE ONLY	SubPop					RENAME TO		SubPops
;
ALTER TABLE ONLY	SubPops					ADD PRIMARY KEY (subpop_id)
;
ALTER TABLE ONLY	SubPops					RENAME			subpop_id		TO	id
;
ALTER TABLE ONLY	SubPops					RENAME			pop_id			TO	population_id
;
ALTER TABLE ONLY	SubPops					RENAME			type			TO	kind
;
ALTER TABLE ONLY	SubPops					ADD FOREIGN KEY (subsnp_id)		REFERENCES	SubSNPs
;
ALTER TABLE ONLY	SubPops					ADD FOREIGN KEY (population_id)	REFERENCES	Populations
;

ALTER TABLE ONLY	SubPopAllele			RENAME TO		SubPopAlleles
;
ALTER TABLE ONLY	SubPopAlleles			RENAME			pop_id			TO	population_id
;
ALTER TABLE ONLY	SubPopAlleles			RENAME			type			TO	kind
;
ALTER TABLE ONLY	SubPopAlleles			ADD				id serial
;
ALTER TABLE ONLY	SubPopAlleles			ADD FOREIGN KEY (population_id)	REFERENCES	Populations
;
ALTER TABLE ONLY	SubPopAlleles			ADD FOREIGN KEY (subpop_id)		REFERENCES	SubPops
;
ALTER TABLE ONLY	SubPopAlleles			ADD FOREIGN KEY (subsnp_id)		REFERENCES	SubSNPs
;

ALTER TABLE ONLY	SNPSubSNPLink			RENAME TO		SNPSubSNPLinks
;
ALTER TABLE ONLY	SNPSubSNPLinks			ADD CONSTRAINT	snpsubsnplinks_snp_id_fkey
											FOREIGN KEY		(snp_id)		REFERENCES	SNPs(id)
;
ALTER TABLE ONLY	SNPSubSNPLinks			ADD CONSTRAINT	snpsubsnplink_subsnp_id_fkey
											FOREIGN KEY		(subsnp_id)		REFERENCES	SubSNPs(id)
;

