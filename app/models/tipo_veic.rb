class TipoVeic < ActiveRecord::Base
  
  def self.drop_down
    TipoVeic.all.collect {|t| [t.tipo, t.id]}
  end
end
