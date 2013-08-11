class CreateFotosresposta < ActiveRecord::Migration
  def change
    create_table :fotosresposta do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
