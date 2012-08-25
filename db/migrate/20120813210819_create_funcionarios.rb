class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.integer :matricula
      t.string :nome
      t.string :senha
      t.references :tipo_func
      t.references :uh

      t.timestamps
    end
    add_index :funcionarios, :tipo_func_id
    add_index :funcionarios, :uh_id
  end
end
