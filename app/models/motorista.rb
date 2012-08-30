class Motorista < ActiveRecord::Base
  belongs_to :veiculo
  belongs_to :residencia
  has_many :acessos
end
