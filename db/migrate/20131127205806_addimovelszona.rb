class Addimovelszona < ActiveRecord::Migration
  def up
  	add_column :imovels, :zona, :string
  end

  def down
  end
end
