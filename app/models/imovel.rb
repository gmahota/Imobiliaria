class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :preco, :provincia,:latitude,:longitude,:raio, :referencia, :resumo, :tipoImovel, :tipoNegocio,:tipologia, :moeda, :estatuto, :observacao, :referencia,:user_id, :zona
  has_many :documentos
  belongs_to :user

  accepts_nested_attributes_for :documentos
  
  self.per_page = 4
  
  def self.search(idreferencia , idNegocio , idtipoImovel , idTipologia , idCidade, idlocalizacao, precoMin , precoMax)
    @imovel 
    if idreferencia.blank?
      @imovel = self.where(:localizacao => idlocalizacao ) unless idlocalizacao.blank?
      @imovel = self.where(:tipoNegocio => idNegocio ) unless idNegocio.blank?
      @imovel = self.where(:tipoImovel => idtipoImovel) unless idtipoImovel.blank?
      @imovel = self.where(:tipologia => idTipologia ) unless idTipologia.blank?
      @imovel = self.where(:cidade => idCidade ) unless idCidade.blank?
      @imovel = self.where(preco: precoMin..precoMax) unless ( precoMin.blank? and precoMax.blank? )      
    else
      
      @imovel = self.where(:id => idreferencia)
      
    end
    if idreferencia.blank? and idlocalizacao.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank? and precoMin.blank? and precoMax.blank?
      @imovel = self.where(id: 0..10000000000000, :estatuto => ["Destaque","","Destaque Semana"]);
    end
    @imovel.order('id desc')
  end

  def self.tipoPesquiza(idreferencia , idNegocio , idtipoImovel , idTipologia , idCidade, idlocalizacao, precoMin , precoMax)
    @tipo = ""
    if idreferencia.blank?
     
     @tipo = @tipo + " * Localizacao - #{idlocalizacao} " unless idlocalizacao.blank?

     @tipo = @tipo + " * Tipo Negocio - #{idNegocio} " unless idNegocio.blank?

     @tipo = @tipo + " * Tipo Imovel - #{idtipoImovel} " unless idtipoImovel.blank?
     
     @tipo = @tipo + " * Cidade - #{idCidade} " unless idCidade.blank?
     
     @tipo = @tipo + " * Tipologia - #{idTipologia} " unless idTipologia.blank?
     
     @tipo = @tipo + " * Entre $#{precoMin} e $#{precoMax} " unless ( precoMin.blank? and precoMax.blank? )
      
    else
      @tipo = @tipo + " Referencia - #{idreferencia}"
      
    end
    if idreferencia.blank? and idlocalizacao.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank? and precoMin.blank? and precoMax.blank?
      @tipo = ""
    end
    @tipo
  end

  def self.procurar(idtipoImovel , idEstatuto)
    @imovel
    @imovel = self.where(:estatuto => idEstatuto) unless idEstatuto.blank?
    @imovel = self.where(:tipoImovel => idtipoImovel) unless idtipoImovel.blank?
    @imovel.order('id desc')
  end


  def getImagemGeral
    @imagem = "https://s3.amazonaws.com/RecImoveis/avatars/real-estate-agent.jpg"
    documentos.each do |doc| 
      if doc.descricao == "Geral" 
        @imagem = doc.avatar.url
      end
    end

    if @imagem == "http://s3.amazonaws.com/RecImoveis/avatars/81?1384048180" and documentos.count > 0
      @imagem = documentos.first.avatar.url
    end

    @imagem
  end

end
