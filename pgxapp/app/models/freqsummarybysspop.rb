class Freqsummarybysspop < ActiveRecord::Base

  belongs_to				:population,	:foreign_key => "population_id"
  belongs_to				:subsnp,		:foreign_key => "subsnp_id"

  validates_presence_of		:id,:subsnp_id,:population_id,:source,:chr_cnt,
							:ind_cnt,:non_founder_ind_cnt,:last_updated_time
  validates_uniqueness_of	:id

end
