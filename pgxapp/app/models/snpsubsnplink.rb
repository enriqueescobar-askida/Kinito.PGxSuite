class Snpsubsnplink < ActiveRecord::Base
  
  belongs_to				:snp,		:foreign_key => "snp_id"
  belongs_to				:subsnp,	:foreign_key => "subsnp_id"

  validates_presence_of		:subsnp_id,:snp_id,:substrand_reversed_flag

end
