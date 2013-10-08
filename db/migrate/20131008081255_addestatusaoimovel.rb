class Addestatusaoimovel < ActiveRecord::Migration
  def up
  	add_column :imovels, :estatuto, :string
  end

  def down
  end
end
