class TipoFunc < ActiveRecord::Base
  has_many :funcionario
  attr_accessible :tipo
end
