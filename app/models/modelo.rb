class Modelo < ActiveRecord::Base 
  belongs_to :marca
  has_many :veiculo
  attr_accessible :modelo, :marca, :marca_id
  
end