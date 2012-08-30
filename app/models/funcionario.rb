class Funcionario < ActiveRecord::Base
  belongs_to :tipo_func
  belongs_to :uh
  has_many :acessos
  
  attr_accessible :matricula, :senha, :nome, :uh_id, :uh
  
    validates :nome, :presence => true, :length => { :minimum => 2}
    validates :matricula, :presence => true, :length => {:minimum => 6}

end
