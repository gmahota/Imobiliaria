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
      @imovel = self.where("tipoNegocio LIKE ? and tipoImovel LIKE ? and  cidade LIKE ? and tipologia LIKE?" , "%#{idNegocio}%", "%#{idtipoImovel}%" , "%#{idCidade}%", "%#{idTipologia}%")
    
      
      #if precoMin.blank? and precoMax.blank?
        #@imovel = self.where("(preco BETWEEN ? and ?) and tipoNegocio LIKE ? and tipoImovel LIKE ? and  cidade LIKE ? and tipologia LIKE?", "%#{precoMin}%", "%#{ precoMax}%" , "%#{idNegocio}%", "%#{idtipoImovel}%" , "%#{idCidade}%", "%#{idTipologia}%")
      #else
        @imovel = self.where("tipoNegocio LIKE ? and tipoImovel LIKE ? and  cidade LIKE ? and tipologia LIKE?", "%#{idNegocio}%", "%#{idtipoImovel}%" , "%#{idCidade}%", "%#{idTipologia}%")
      
      #end
      
    else
      
      
      
      @imovel = self.where("referencia LIKE ?", "%#{idreferencia}%")
      
    end
    if idreferencia.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank? and precoMin.blank? and precoMax.blank?
      @imovel = self.where("referencia LIKE ?", "%#{idreferencia}%");
    end
    @imovel
  end
end
