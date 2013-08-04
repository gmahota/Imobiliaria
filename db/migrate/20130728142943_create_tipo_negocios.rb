class CreateTipoNegocios < ActiveRecord::Migration
  def change
    create_table :tipo_negocios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
