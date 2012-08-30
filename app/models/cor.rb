class Cor < ActiveRecord::Base
  attr_accessible :cor
  has_many :veiculos
  
  
end
