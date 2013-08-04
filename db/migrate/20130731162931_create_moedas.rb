class CreateMoedas < ActiveRecord::Migration
  def change
    create_table :moedas do |t|
      t.string :sigla
      t.string :descricao

      t.timestamps
    end
  end
end
