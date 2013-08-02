class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :pais, :preco, :provincia, :referencia, :resumo, :tipoImovel, :tipoNegocio, :moeda
  has_many :documentos
  
  accepts_nested_attributes_for :documentos

  def self.searchReferencia(search_term)
    if search_term.blank?
      self.all
    else
      self.where("referencia LIKE ?", "%#{search_term}%")
    end
  end
  
  def self.searchtipoImovel(search_term)
    if search_term.blank?
      self.all
    else
      self.where("tipoImovel LIKE ?", "%#{search_term}%")
    end
  end
    
end
