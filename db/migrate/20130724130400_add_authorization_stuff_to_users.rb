class AddAuthorizationStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :crypted_password, :string
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
  end
  
  
end

class AddPhotoToUser < ActiveRecord::Migration
  def change
    add_column :users,:avatar,    :string
  end
end