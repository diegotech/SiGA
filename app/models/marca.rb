class Marca < ActiveRecord::Base
  attr_accessible :marca
  has_many :modelos
  
end
