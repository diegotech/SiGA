class CreateAcessos < ActiveRecord::Migration
  def change
    create_table :acessos do |t|
      t.references :residencia
      t.references :motorista
      t.references :funcionario

      t.timestamps
    end
    add_index :acessos, :residencia_id
    add_index :acessos, :motorista_id
    add_index :acessos, :funcionario_id
  end
end
