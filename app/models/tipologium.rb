class Tipologium < ActiveRecord::Base
  attr_accessible :descricao, :tipoImovel_id
  belongs_to :tipo_imovel
end
