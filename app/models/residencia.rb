class Residencia < ActiveRecord::Base
  belongs_to :uh
  belongs_to :pessoa
  has_many :veiculos, :through => :motorista
  has_many :motoristas
  
  attr_accessible :uh_id, :pessoa_id

  
end
