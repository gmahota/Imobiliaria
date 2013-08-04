class CreateTipologia < ActiveRecord::Migration
  def change
    create_table :tipologia do |t|
      t.text :descricao
      t.integer :tipoImovel_id

      t.timestamps
    end
  end
end
