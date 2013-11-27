class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string :descriacao
      t.string :resumo
      t.string :referencia
      t.string :tipoNegocio
      t.string :tipoImovel
      t.string :estado
      t.string :area
      t.integer :preco
      t.string :pais
      t.string :provincia
      t.string :cidade
      t.string :localizacao
      
      t.timestamps
    end
  end
end
