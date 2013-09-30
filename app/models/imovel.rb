class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :preco, :provincia,:latitude,:longitude,:raio, :referencia, :resumo, :tipoImovel, :tipoNegocio,:tipologia, :moeda
  has_many :documentos
  
  #reverse_geocoded_by :latitude, :longitude
  #after_validation :reverse_geocode  # auto-fetch address
  
  #acts_as_gmappable

  #def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  #  "#{self.localizacao}, #{self.cidade}" 
  #end
    
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
      
      @imovel = self.where("id > ", 0)
      
    end
    
    if idreferencia.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank? and precoMin.blank? and precoMax.blank?
      @imovel = self.where("id > ", 0);
    end
    @imovel
  end
end
