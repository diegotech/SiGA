class Veiculo < ActiveRecord::Base
  

  belongs_to :tipo_veic
  belongs_to :cor
  belongs_to :modelo
  has_many :residencias, :through => :motoristas
  has_many :motoristas


  attr_accessible :placa, :tipo_veic, :tipo_veic_id, :cor, :cor_id, :modelo, :modelo_id

  
  validates :placa, :presence => true, :length => {:minimum => 7}
  validates_presence_of :modelo
  
  
  #retorna marca + modelo
  def caracteristicas veiculo
    veiculo.modelo.marca.marca + "/" + veiculo.modelo.modelo + " | Cor: " + veiculo.cor.cor
  end
  
  # pesquisa por rg ou nome
  def self.search (search)
    parametro = "%" + search + "%"
    find(:all, :conditions => ['placa LIKE ?', parametro])
  end
end
