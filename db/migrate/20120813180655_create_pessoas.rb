class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :rg
      t.references :tipo_pessoa

      t.timestamps
    end
    add_index :pessoas, :tipo_pessoa_id
  end
end
