class TipoPessoa < ActiveRecord::Base
  has_many :pessoa
  attr_accessible :tipo
end
