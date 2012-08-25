class Veiculo < ActiveRecord::Base
  

  belongs_to :tipo_veic
  belongs_to :cor
  belongs_to :modelo
  has_many :residencias, :through => :motorista
  has_many :motoristas


  attr_accessible :placa, :tipo_veic, :tipo_veic_id, :cor, :cor_id, :modelo, :modelo_id

  
  validates :placa, :presence => true, :length => { :minimum => 7}
  validates :modelo, :presence  => true
  
  # pesquisa por rg ou nome
  def self.search (search)
    parametro = "%" + search + "%"
    find(:all, :conditions => ['nome LIKE ?', parametro])
  end
end
