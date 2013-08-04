class CreateDocumentos < ActiveRecord::Migration
  def change
    create_table :documentos do |t|
      t.string :descricao
      t.integer :imovel_id

      t.timestamps
    end
  end
end
