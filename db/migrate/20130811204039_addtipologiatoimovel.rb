class Addtipologiatoimovel < ActiveRecord::Migration
  def up
    add_column :imovels, :tipologia, :string
    add_column :imovels, :latitude, :float
    add_column :imovels, :longitude, :float
    add_column :imovels, :raio, :float
  end

  def down
  end
end
