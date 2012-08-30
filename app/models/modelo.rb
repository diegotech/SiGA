class Modelo < ActiveRecord::Base 
  belongs_to :marca
  has_many :veiculos
  attr_accessible :modelo, :marca, :marca_id
  
end