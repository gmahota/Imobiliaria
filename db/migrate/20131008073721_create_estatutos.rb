class CreateEstatutos < ActiveRecord::Migration
  def change
    create_table :estatutos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
