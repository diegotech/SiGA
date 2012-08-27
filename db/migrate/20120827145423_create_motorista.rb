class CreateMotorista < ActiveRecord::Migration
  def change
    create_table :motorista do |t|
      t.references :veiculo
      t.references :residencia

      t.timestamps
    end
    add_index :motorista, :veiculo_id
    add_index :motorista, :residencia_id
  end
end
