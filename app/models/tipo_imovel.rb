class TipoImovel < ActiveRecord::Base
  attr_accessible :descricao
  has_many :tipologiums
  accepts_nested_attributes_for :tipologiums
end
