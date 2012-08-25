class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :modelo
      t.references :marca

      t.timestamps
    end
    add_index :modelos, :marca_id
  end
end
