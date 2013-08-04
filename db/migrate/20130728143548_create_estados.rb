class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
