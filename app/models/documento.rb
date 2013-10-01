class Documento < ActiveRecord::Base
  attr_accessible :descricao, :imovel_id, :avatar
  has_attached_file :avatar, :storage => ENV['S3_BUCKET'] ? :s3 : :filesystem, :s3_credentials => {
    	:access_key_id => ENV['S3_KEY'],
    	:secret_access_key => ENV['S3_SECRET']
  	},  :bucket => ENV['S3_BUCKET'], :path => ":attachment/:id" ,:styles => {
                      :medium  => {
                        :geometry => '400x400#',
                        :quality => 60,
                      }}

  belongs_to :imovel

  
end
