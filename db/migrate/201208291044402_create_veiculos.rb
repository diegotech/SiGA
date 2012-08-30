class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.references :tipo_veic
      t.references :cor
      t.references :modelo

      t.timestamps
    end
    add_index :veiculos, :tipo_veic_id
    add_index :veiculos, :cor_id
    add_index :veiculos, :modelo_id
  end
end
