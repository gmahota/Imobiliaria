class Cidade < ActiveRecord::Base
  attr_accessible :descricao, :locations_attributes
  has_many :locations

  accepts_nested_attributes_for :locations
  
end
