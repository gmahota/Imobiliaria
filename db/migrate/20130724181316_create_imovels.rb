class CreateImovels < ActiveRecord::Migration
  def change
    create_table :imovels do |t|
      t.string :descriacao
      t.string :text
      t.string :resumo
      t.string :text
      t.string :referencia
      t.string :string
      t.string :tipoNegocio
      t.string :string
      t.string :tipoImovel
      t.string :string
      t.string :estado
      t.string :string
      t.string :area
      t.string :string
      t.integer :preco
      t.string :pais
      t.string :string
      t.string :provincia
      t.string :string
      t.string :cidade
      t.string :string
      t.string :localizacao
      t.string :string

      t.timestamps
    end
  end
end
