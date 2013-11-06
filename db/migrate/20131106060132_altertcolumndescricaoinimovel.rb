class Altertcolumndescricaoinimovel < ActiveRecord::Migration
  def up
  	change_column :imovels, :descriacao, :text, :limit => nil
  end

  def down
  end
end
