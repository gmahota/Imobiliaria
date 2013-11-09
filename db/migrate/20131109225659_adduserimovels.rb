class Adduserimovels < ActiveRecord::Migration
  def up
  	add_column :imovels, :user_id, :integer
  end

  def down
  end
end
