class Snpcontiglocusid < ActiveRecord::Base

  belongs_to				:snp,		:foreign_key => "snp_id"
  belongs_to				:subnp,		:foreign_key => "subnp_id"

  validates_presence_of		:snp_id,:contig_acc,:contig_ver,:locus_id,:fxn_class,
							:build_id,:ctg_id,:id
  validates_uniqueness_of	:id

end
