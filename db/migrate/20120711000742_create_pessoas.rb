class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.integer :id
      t.string :nome
      t.string :senha

      t.timestamps
    end
  end
end
