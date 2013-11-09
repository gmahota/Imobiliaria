class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :preco, :provincia,:latitude,:longitude,:raio, :referencia, :resumo, :tipoImovel, :tipoNegocio,:tipologia, :moeda, :estatuto, :observacao, :referencia,:user_id
  has_many :documentos
  belongs_to :user

  accepts_nested_attributes_for :documentos
  
  self.per_page = 3
  
  def self.search(idreferencia , idNegocio , idtipoImovel , idTipologia , idCidade, precoMin , precoMax)
    @imovel
    if idreferencia.blank?
     @imovel = self.where(:tipoNegocio => idNegocio) unless idNegocio.blank?
     @imovel = self.where(:tipoImovel => idtipoImovel) unless idtipoImovel.blank?
     @imovel = self.where(:cidade => idNegocio) unless idCidade.blank?
     @imovel = self.where(:tipologia => idtipoImovel) unless idTipologia.blank?
     @imovel = self.where(preco: precoMin..precoMax) unless ( precoMin.blank? and precoMax.blank? )  
     
      
    else
      
      @imovel = self.where(:id => idreferencia)
      
    end
    if idreferencia.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank? and precoMin.blank? and precoMax.blank?
      @imovel = self.where(id: 0..1000000000);
    end
    @imovel
  end
end
