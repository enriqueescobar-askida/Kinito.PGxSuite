$table_rename{'BoucEmissaire'} = '';
$table_rename{'.chec_des_enregistrements_des_corrections_automatiques_de_noms'} = '';
$table_rename{'ChoixFormSaisieContig'}='';
$table_rename{'Messages'}='';
$table_rename{'TOperation_contig'}='';
$table_rename{'PCR_par_plaques\(temp\)'}='';
#$table_rename{'Donnees_uniques_PCR_par_plaques'}='';
$table_rename{'PCR_par_plaques'}='';
$table_rename{'Liste_projets'}='';
$table_rename{'projets'}='';
$table_rename{'Reprises_amorces\(TEMP\)'}='';
$table_rename{'Responsables'}='';
$table_rename{'Donnees_expression_II'}='Donnees_expression';
$table_rename{'Liste_experiences_expression_II'}='Liste_experiences_expression'; 

$field_rename{'Contigs.id_contig'} = 'id';
$field_rename{'Etapes_PCR_globales.id_etape_PCR_globale'} = 'id';
$field_rename{'Etapes_PCR_par_programme.id_etape_PCR_programme'} = 'id';
$field_rename{'Experiences_amplification.id_experience'} = 'id';
$field_rename{'Familles_Genes.id_gc'} = 'id';
$field_rename{'Liste_ADNs.id_adn'} = 'id';
$field_rename{'Liste_amorces.id_amorce'} = 'id';
$field_rename{'Liste_appareils_PCR.id_appareil_PCR'} = 'id';
$field_rename{'Liste_assemblages_contigs.id_assemblage_contig'} = 'id';
$field_rename{'Liste_Contigs.id_contig_liste'} = 'id';
$field_rename{'Liste_etapes_PCR.id_etape_PCR_liste'} = 'id';
$field_rename{'Liste_fournisseurs.id_fournisseur'} = 'id';
$field_rename{'Liste_genes.id_famgene_liste'} = 'id';
$field_rename{'Liste_lots_amorces.id_lot_amorces'} = 'id';
$field_rename{'Liste_organismes.id_organisme'} = 'id';
$field_rename{'Liste_plaques_amorces.id_plaque'} = 'id';
$field_rename{'Liste_Polymerases.id_polym'} = 'id';
$field_rename{'Liste_projets.id_projet_liste'} = 'id';
$field_rename{'Liste_puces.id_puce'} = 'id';
$field_rename{'Liste_sources_contigs.id_source_contig'} = 'id';
$field_rename{'Liste_types_ADN.id_gabarit'} = 'id';
$field_rename{'Liste_types_plaques.id_type_plaque'} = 'id';
$field_rename{'Liste_usagers.id_usager'} = 'id';
$field_rename{'Melanges_PCR.id_melangePCR'} = 'id';
$field_rename{'Messages.id_message'} = 'id';
$field_rename{'Programmes_PCR.id_programmePCR'} = 'id';
$field_rename{'Projets.id_projet'} = 'id';
$field_rename{'SNPs.id_SNP'} = 'id';
$field_rename{'TEMP_Experiences_par_plaque.id_experience'} = 'id';
$field_rename{'TOperation_contig.id_oc'} = 'id';
$field_rename{'Regions_analysees.id_experience'} = 'id';
$field_rename{'PCRs.id_PCR'} = 'id';
$field_rename{'Donnees_uniques_PCR_par_plaques.id_donnees_PCR'} = 'id';
$field_rename{'Liste_lots_sequencage.id_lot_seq'} = 'id';
$field_rename{'Liste_logiciels.id_logiciel'} = 'id';
$field_rename{'Donnees_expression.id_expr'} = 'id';
$field_rename{'Liste_experiences_expression.id_experience_expr'} = 'id';
$field_rename{'Liste_methodes_conception_amorces.id_methode_conception'} = 'id';


#$field_rename{'contigs.id_gc'} = 'familles_genes_id';
$field_rename{'contigs.id_gc'} = 'liste_genes_id';
$field_rename{'contigs.id_contig_liste'} = 'liste_contigs_id';
$field_rename{'etapes_pcr_globales.id_etape_pcr_liste'} = 'liste_etapes_pcr_id';
$field_rename{'etapes_pcr_par_programme.id_etape_pcr_globale'} = 'etapes_pcr_globales_id';
$field_rename{'etapes_pcr_par_programme.id_programmepcr'} = 'programmes_pcr_id';
$field_rename{'pcrs.id_experience'} = 'regions_analysees_id';
$field_rename{'pcrs.programme'} = 'programmes_pcr_id';
$field_rename{'pcrs.melange'} = 'melanges_pcr_id';
$field_rename{'pcrs.appareil'} = 'liste_appareils_pcr_id';
$field_rename{'pcrs.adn'} = 'liste_adns_id';
$field_rename{'pcrs.usager_pcr'} = 'usager_pcr_id';
$field_rename{'pcrs.usager_saisie'} = 'usager_saisie_id';
$field_rename{'regions_analysees.amorce_fwd'} = 'amorces_fwd_id';
$field_rename{'regions_analysees.amorce_rev'} = 'amorces_rev_id';
$field_rename{'regions_analysees.id_contig'} = 'contigs_id';
$field_rename{'familles_genes.id_famgene_liste'} = 'liste_genes_id';
$field_rename{'familles_genes.id_personne'} = 'liste_usagers_id';
$field_rename{'liste_adns.type_adn'} = 'liste_types_adn_id';
$field_rename{'liste_adns.provenance_adn'} = 'liste_organismes_id';
$field_rename{'liste_amorces.gabarit_amorce'} = 'liste_contigs_id';
$field_rename{'liste_amorces.plaque_amorce'} = 'liste_plaques_amorces_id';
$field_rename{'liste_amorces.lot_commande_amorce'} = 'liste_lots_amorces_id';
$field_rename{'liste_contigs.assemblage_contig'} = 'liste_assemblages_contigs_id';
$field_rename{'liste_assemblages_contigs.taxon'} = 'liste_organismes_id';
$field_rename{'liste_assemblages_contigs.source'} = 'liste_sources_contigs_id';
$field_rename{'liste_assemblages_contigs.type_adn'} = 'liste_types_adn_id';
$field_rename{'liste_lots_amorces.usager_commande_lot'} = 'liste_usagers_id';
$field_rename{'liste_lots_amorces.fournisseur_commande_lot'} = 'liste_fournisseurs_id';
$field_rename{'liste_lots_amorces.usager_reception_lot'} = 'usager_reception_lot_id';
$field_rename{'liste_plaques_amorces.type_plaque'} = 'liste_types_plaques_id';
$field_rename{'liste_plaques_amorces.autre_plaque_liee'} = 'autre_plaque_liee_id';
$field_rename{'liste_lots_sequencage.endroit_sequencage'} = 'liste_fournisseurs_id';
$field_rename{'melanges_pcr.id_polymerase'} = 'liste_polymerases_id';
$field_rename{'projets.id_gc'} = 'familles_genes_id';
$field_rename{'projets.id_projet_liste'} = 'liste_projets_id';
$field_rename{'snps.nom_puce'} = 'liste_puces_id';
$field_rename{'snps.id_experience'} = 'regions_analysees_id';

$field_rename{'regions_analysees.lot_seq_hap'} = 'lot_seq_hap_id';
$field_rename{'regions_analysees.lot_seq_par1'} = 'lot_seq_par1_id';
$field_rename{'regions_analysees.lot_seq_par2'} = 'lot_seq_par2_id';
$field_rename{'regions_analysees.lot_seq_pool'} = 'lot_seq_pool_id';
$field_rename{'regions_analysees.lot_seq_pm_pool'} = 'lot_seq_pm_pool_id';
$field_rename{'regions_analysees.usager_reprise_PCR'} = 'usager_reprise_pcr_id';

$field_rename{'liste_amorces.usager_ajout_amorce'} = 'usager_ajout_amorce_id';
$field_rename{'liste_amorces.usager_commande_amorce'} = 'usager_commande_amorce_id';
$field_rename{'liste_amorces.usager_reception_amorce'} = 'usager_reception_amorce_id';
$field_rename{'liste_amorces.fournisseur_amorce'} = 'liste_fournisseurs_id';
$field_rename{'liste_amorces.conception_num_methode'} = 'liste_methodes_conception_amorces_id';

$field_rename{'Donnees_uniques_PCR_par_plaques.programme'} = 'programmes_pcr_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.melange'} = 'liste_melanges_pcr_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.appareil'} = 'liste_appareils_pcr_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.ADN'} = 'liste_types_adn_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.usager'} = 'liste_usagers_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.plaqueF'} = 'liste_plaques_amorces_F_id';
$field_rename{'Donnees_uniques_PCR_par_plaques.plaqueR'} = 'liste_plaques_amorces_R_id';

$field_rename{'Liste_usagers.nom_usager_access'} = 'login_name';

$field_rename{'Donnees_expression.no_contig_icl'} = 'liste_contigs_id';
$field_rename{'Donnees_expression.experience'} = 'liste_experiences_expression_id';

$field_rename{'Liste_experiences_expression.limite_\+'} = 'limite_sup';
$field_rename{'Liste_experiences_expression.limite__'} = 'limite_inf';
$field_rename{'Liste_experiences_expression.considerer_limites\+_'} = 'considerer_limites';
$field_rename{'Liste_experiences_expression.experimentateur'} = 'liste_usagers_id';

$field_rename{'Liste_methodes_conception_amorces.logiciel'} = 'liste_logiciels_id';


