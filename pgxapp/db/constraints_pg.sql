--ALTER TABLE contigs ADD FOREIGN KEY (familles_genes_id) REFERENCES familles_genes;
ALTER TABLE contigs ADD FOREIGN KEY (liste_genes_id) REFERENCES liste_genes;
ALTER TABLE contigs ADD FOREIGN KEY (liste_contigs_id) REFERENCES liste_contigs;
ALTER TABLE etapes_pcr_globales ADD FOREIGN KEY (liste_etapes_pcr_id) REFERENCES liste_etapes_pcr;
ALTER TABLE etapes_pcr_par_programme ADD FOREIGN KEY (etapes_pcr_globales_id) REFERENCES etapes_pcr_globales;
ALTER TABLE etapes_pcr_par_programme ADD FOREIGN KEY (programmes_pcr_id) REFERENCES programmes_pcr;
ALTER TABLE pcrs ADD FOREIGN KEY (regions_analysees_id) REFERENCES regions_analysees;
ALTER TABLE pcrs ADD FOREIGN KEY (programmes_pcr_id) REFERENCES programmes_pcr;
ALTER TABLE pcrs ADD FOREIGN KEY (melanges_pcr_id) REFERENCES melanges_pcr;
ALTER TABLE pcrs ADD FOREIGN KEY (liste_appareils_pcr_id) REFERENCES liste_appareils_pcr;
ALTER TABLE pcrs ADD FOREIGN KEY (liste_adns_id) REFERENCES liste_adns;
ALTER TABLE pcrs ADD FOREIGN KEY (usager_pcr_id) REFERENCES liste_usagers;
ALTER TABLE pcrs ADD FOREIGN KEY (usager_saisie_id) REFERENCES liste_usagers;
ALTER TABLE regions_analysees ADD FOREIGN KEY (amorces_fwd_id) REFERENCES liste_amorces;
ALTER TABLE regions_analysees ADD FOREIGN KEY (amorces_rev_id) REFERENCES liste_amorces;
ALTER TABLE regions_analysees ADD FOREIGN KEY (contigs_id) REFERENCES contigs;
ALTER TABLE regions_analysees ADD FOREIGN KEY (lot_seq_hap_id) REFERENCES liste_lots_sequencage;
ALTER TABLE regions_analysees ADD FOREIGN KEY (lot_seq_par1_id) REFERENCES liste_lots_sequencage;
ALTER TABLE regions_analysees ADD FOREIGN KEY (lot_seq_par2_id) REFERENCES liste_lots_sequencage;
ALTER TABLE regions_analysees ADD FOREIGN KEY (lot_seq_pool_id) REFERENCES liste_lots_sequencage;
ALTER TABLE regions_analysees ADD FOREIGN KEY (lot_seq_pm_pool_id) REFERENCES liste_lots_sequencage;
ALTER TABLE regions_analysees ADD FOREIGN KEY (usager_reprise_pcr_id) REFERENCES liste_usagers;
ALTER TABLE liste_lots_sequencage ADD FOREIGN KEY (liste_fournisseurs_id) REFERENCES liste_fournisseurs;
--ALTER TABLE familles_genes ADD FOREIGN KEY (liste_genes_id) REFERENCES liste_genes;
--ALTER TABLE familles_genes ADD FOREIGN KEY (liste_usagers_id) REFERENCES liste_usagers;
ALTER TABLE liste_genes ADD FOREIGN KEY (liste_usagers_id) REFERENCES liste_usagers;
ALTER TABLE liste_adns ADD FOREIGN KEY (liste_types_adn_id) REFERENCES liste_types_adn;
ALTER TABLE liste_adns ADD FOREIGN KEY (liste_organismes_id) REFERENCES liste_organismes;
ALTER TABLE liste_amorces ADD FOREIGN KEY (liste_plaques_amorces_id) REFERENCES liste_plaques_amorces;
ALTER TABLE liste_amorces ADD FOREIGN KEY (liste_lots_amorces_id) REFERENCES liste_lots_amorces;
ALTER TABLE liste_amorces ADD FOREIGN KEY (usager_ajout_amorce_id) REFERENCES liste_usagers;
ALTER TABLE liste_amorces ADD FOREIGN KEY (usager_commande_amorce_id) REFERENCES liste_usagers;
ALTER TABLE liste_amorces ADD FOREIGN KEY (usager_reception_amorce_id) REFERENCES liste_usagers;
ALTER TABLE liste_amorces ADD FOREIGN KEY (liste_fournisseurs_id) REFERENCES liste_fournisseurs;
ALTER TABLE liste_amorces ADD FOREIGN KEY (liste_methodes_conception_amorces_id) REFERENCES liste_methodes_conception_amorces;
-- ALTER TABLE liste_amorces ADD FOREIGN KEY (liste_logiciels_id) REFERENCES liste_logiciels;
ALTER TABLE liste_contigs ADD FOREIGN KEY (liste_assemblages_contigs_id) REFERENCES liste_assemblages_contigs;
ALTER TABLE liste_assemblages_contigs ADD FOREIGN KEY (liste_sources_contigs_id) REFERENCES liste_sources_contigs;
ALTER TABLE liste_assemblages_contigs ADD FOREIGN KEY (liste_organismes_id) REFERENCES liste_organismes;
ALTER TABLE liste_assemblages_contigs ADD FOREIGN KEY (liste_types_adn_id) REFERENCES liste_types_adn;
ALTER TABLE liste_lots_amorces ADD FOREIGN KEY (liste_usagers_id) REFERENCES liste_usagers;
ALTER TABLE liste_lots_amorces ADD FOREIGN KEY (liste_fournisseurs_id) REFERENCES liste_fournisseurs;
ALTER TABLE liste_lots_amorces ADD FOREIGN KEY (usager_reception_lot_id) REFERENCES liste_usagers;
ALTER TABLE liste_plaques_amorces ADD FOREIGN KEY (liste_types_plaques_id) REFERENCES liste_types_plaques;
ALTER TABLE liste_plaques_amorces ADD FOREIGN KEY (autre_plaque_liee_id) REFERENCES liste_plaques_amorces;
ALTER TABLE melanges_pcr ADD FOREIGN KEY (liste_polymerases_id) REFERENCES liste_polymerases;
ALTER TABLE snps ADD FOREIGN KEY (liste_puces_id) REFERENCES liste_puces;
ALTER TABLE snps ADD FOREIGN KEY (regions_analysees_id) REFERENCES regions_analysees;

ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (programmes_pcr_id) REFERENCES programmes_pcr;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_melanges_pcr_id) REFERENCES melanges_pcr;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_appareils_pcr_id) REFERENCES liste_appareils_pcr;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_types_adn_id) REFERENCES liste_types_adn;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_usagers_id) REFERENCES liste_usagers;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_plaques_amorces_F_id) REFERENCES liste_plaques_amorces;
ALTER TABLE Donnees_uniques_PCR_par_plaques ADD FOREIGN KEY (liste_plaques_amorces_R_id) REFERENCES liste_plaques_amorces;

ALTER TABLE Donnees_expression ADD FOREIGN KEY (liste_contigs_id) REFERENCES liste_contigs;
ALTER TABLE Donnees_expression ADD FOREIGN KEY (liste_experiences_expression_id) REFERENCES liste_experiences_expression;
ALTER TABLE Liste_experiences_expression ADD FOREIGN KEY (liste_usagers_id) REFERENCES liste_usagers;
ALTER TABLE Liste_methodes_conception_amorces ADD FOREIGN KEY (liste_logiciels_id) REFERENCES liste_logiciels;


 
-- Add id field since it is needed by Rails applications
ALTER TABLE nearest_neighbor_thermodyn ADD COLUMN id serial;
ALTER TABLE P96 ADD COLUMN id serial;

-- 
UPDATE liste_amorces SET sequence5_3_amorce = upper(sequence5_3_amorce);
