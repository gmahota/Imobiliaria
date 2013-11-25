class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :celular

      t.timestamps
    end
  end
end
