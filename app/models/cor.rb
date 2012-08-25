class Cor < ActiveRecord::Base
  attr_accessible :cor
  has_many :veiculo
  
  def self.drop_down
    Cor.all.collect {|c| [c.cor, c.id]}
  end
end
