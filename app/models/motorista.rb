class Motorista < ActiveRecord::Base
  belongs_to :veiculo
  belongs_to :residencia
end
