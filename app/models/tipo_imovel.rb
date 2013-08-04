class TipoImovel < ActiveRecord::Base
  attr_accessible :descricao
  has_many :tipologium
end
