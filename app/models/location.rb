class Location < ActiveRecord::Base
  attr_accessible :cidade_id, :descricao
  belongs_to :cidade 
end
