class TipoUh < ActiveRecord::Base
  has_many :uhs
  attr_accessible :tipo, :tipo_id
end
