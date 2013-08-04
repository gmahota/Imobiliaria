class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :pais, :preco, :provincia, :referencia, :resumo, :tipoImovel, :tipoNegocio, :moeda
  has_many :documentos
  
  accepts_nested_attributes_for :documentos

  def self.search(idreferencia , idNegocio , idtipoImovel , idTipologia , idCidade)
    if idreferencia.blank?
        self.where("tipoNegocio LIKE ? and tipoImovel LIKE ? and  cidade LIKE ?", "%#{idNegocio}%", "%#{idtipoImovel}%" , "%#{idCidade}%")
    else
      self.where("referencia LIKE ?", "%#{idreferencia}%")
    end
  end
end
