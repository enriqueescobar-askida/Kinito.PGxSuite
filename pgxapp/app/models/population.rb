class Population < ActiveRecord::Base

  has_many					:freqsummarybysspops,
  has_many					:subpops,
  has_many					:subpopalleles,

  validates_presence_of		:id,:handle,:loc_pop_id,:loc_pop_id_upp
  validates_uniqueness_of	:id

end
