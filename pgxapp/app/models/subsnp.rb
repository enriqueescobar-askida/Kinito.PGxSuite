class Subsnp < ActiveRecord::Base
  
  has_one					:snpsubsnplink
  has_many					:subpop
  has_many					:subpopalleles
  has_one					:freqsummarybysspop

  validates_presence_of		:id,:batch_id,:segregate,:tax_id
  validates_uniqueness_of	:id

  protected
  def snp
    return self.snpsubsnplink.snp
  end

end
