class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :descricao
      t.integer :cidade_id

      t.timestamps
    end
  end
end
