class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
      t.string :marca

      t.timestamps
    end
  end
end
