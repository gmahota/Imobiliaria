class Addcolumn < ActiveRecord::Migration
  def up
  	add_column :imovels, :observacao, :text,:limit => nil
  	change_column :imovels, :referencia, :text
  end

  def down
  end
end
