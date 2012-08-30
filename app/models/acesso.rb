class Acesso < ActiveRecord::Base
  belongs_to :residencia
  belongs_to :motorista
  belongs_to :funcionario
end
