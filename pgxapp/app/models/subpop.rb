class Subpop < ActiveRecord::Base

  belongs_to				:population,	:foreign_key => "population_id"
  belongs_to				:subsnp,		:foreign_key => "subsnp_id"

  has_many					:subpopalleles

  validates_presence_of		:batch_id,:subsnp_id,:population_id,:kind,:samplesize,
							:last_updated_time,:id
  validates_uniqueness_of	:id

  protected
  def subpopalleles
    return self.collect{|subpopallele| subpopallele.subpop_id}
  end

end
