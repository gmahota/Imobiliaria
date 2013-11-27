class Addcompanylocation < ActiveRecord::Migration
  def up
  	add_column :companies, :morada, :string
  	add_column :companies, :latitude, :float
    add_column :companies, :longitude, :float
    add_column :companies, :raio, :float
  end

  def down
  end
end
