class Addsocialtocompanies < ActiveRecord::Migration
  def up
  	add_column :companies, :facebook, :string
  	add_column :companies, :twitter, :string
  	add_column :companies, :skype, :string
  end

  def down
  end
end
