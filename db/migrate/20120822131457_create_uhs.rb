class CreateUhs < ActiveRecord::Migration
  def change
    create_table :uhs do |t|
      t.references :tipo_uh
      t.string :quadra
      t.string :conjunto
      t.string :numero
      t.string :telefone

      t.timestamps
    end
    add_index :uhs, :tipo_uh_id
  end
end
