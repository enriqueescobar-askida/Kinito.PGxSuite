class Subpopallele < ActiveRecord::Base

  belongs_to				:population	,:foreign_key => "population_id"
  belongs_to				:subpop		,:foreign_key => "subpop_id"
  belongs_to				:subsnp		,:foreign_key => "subsnp_id"

  validates_presence_of		:batch_id,:subsnp_id,:population_id,:allele,:subpop_id,:id
  validates_uniqueness_of	:id

end
