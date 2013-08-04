class AddImovelMoedaString < ActiveRecord::Migration
  def up
    add_column :imovels, :moeda, :string
  end

  def down
  end
end
