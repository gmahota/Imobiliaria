class Imovel < ActiveRecord::Base
  attr_accessible :area, :cidade, :descriacao, :estado, :localizacao, :pais, :preco, :provincia, :referencia, :resumo, :tipoImovel, :tipoNegocio
end
