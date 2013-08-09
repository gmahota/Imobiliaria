class Tipologium < ActiveRecord::Base
  attr_accessible :descricao
  belongs_to :tipoimovel
end
