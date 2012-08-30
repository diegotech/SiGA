class Residencia < ActiveRecord::Base
  belongs_to :uh
  belongs_to :pessoa
  has_many :veiculos, :through => :motoristas
  has_many :motoristas
  has_many :acessos
  
  attr_accessible :uh_id, :pessoa_id

  validates_presence_of :uh_id, :pessoa_id
  
end
