class Motorista < ActiveRecord::Base
  belongs_to :residencia
  belongs_to :veiculo
end
