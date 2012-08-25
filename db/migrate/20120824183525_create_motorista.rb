class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.references :residencia
      t.references :veiculo

      t.timestamps
    end
    add_index :motorista, :residencia_id
    add_index :motorista, :veiculo_id
  end
end
