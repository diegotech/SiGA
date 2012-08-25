class Pessoa < ActiveRecord::Base
  belongs_to :tipo_pessoa
  has_many :uhs, :through => :residencias
  has_many :residencias

  
  attr_accessible :pessoa_id, :tipo_pessoa, :tipo_pessoa_id, :nome, :rg
  
  validates :nome, :presence => true, :length => { :minimum => 2}
  validates :rg, :presence => true, :length => {:minimum => 5}
  
  # pesquisa por rg ou nome
  def self.search (search)
  parametro = "%" + search + "%"
  find(:all, :conditions => ['nome LIKE ? OR rg LIKE ?', parametro, parametro])
end

end
