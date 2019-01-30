class Snp < ActiveRecord::Base

  has_many					:snpsubsnplinks
  has_many					:snpcontiglocusids

  validates_presence_of		:id,:tax_id,:exemplar_subsnp_id,:univar_id,:cnt_subsnp
  validates_uniqueness_of	:id

  protected
  def subsnps
    return self.snpsubsnplinks.collect{|snpsubsnplink| snpsubsnplink.subsnp}
  end

end
