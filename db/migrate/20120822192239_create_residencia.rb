class CreateResidencia < ActiveRecord::Migration
  def change
    create_table :residencia do |t|
      t.references :uh
      t.references :pessoa

      t.timestamps
    end
    add_index :residencia, :uh_id
    add_index :residencia, :pessoa_id
  end
end
