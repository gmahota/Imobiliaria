class Documento < ActiveRecord::Base
  attr_accessible :descricao, :imovel_id, :avatar
  has_attached_file :avatar, :storage => :s3, :s3_credentials => S3_CREDENTIALS
  belongs_to :imovel

  
end
