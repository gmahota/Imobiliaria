class CreateTipoImovels < ActiveRecord::Migration
  def change
    create_table :tipo_imovels do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
