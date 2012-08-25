class CreateTipoUhs < ActiveRecord::Migration
  def change
    create_table :tipo_uhs do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
