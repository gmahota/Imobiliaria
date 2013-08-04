class ChangeImovelPrecoFloat < ActiveRecord::Migration
  def up
    change_table :imovels do |t|
      t.change :preco, :float
    end
  end

  def down
  end
end
