class Uh < ActiveRecord::Base
  belongs_to :tipo_uh
  has_many :pessoas, :through => :residencias
  has_many :residencias
  
  attr_accessible :tipo_uh, :tipo_uh_id, :quadra, :conjunto, :numero, :telefone
  
  #valida campos
  validates_format_of :telefone, :with => /^[\d]+$/, :message => " - Somente numeros"
  validates_length_of :telefone, :is => 8, :message => " - Deve ter dez digitos"
  
  #retorna endereco completo
  def endereco
     "Quadra " + quadra + ", Conjunto " + conjunto + ", " + tipo_uh.tipo + " " + numero + formata_tel(telefone)
  end
  
  
  #retorna endereco usando parametros
  def address id
    find_by_id id
    endereco
end

  
  #retorna número do telefone formatado
  def formata_tel(telefone)
  tel_formatado = ""
  tel_formatado << telefone[0..3]
  tel_formatado << "-"
  tel_formatado << telefone[4..7]
  ", Fone: " + tel_formatado
end


  
end