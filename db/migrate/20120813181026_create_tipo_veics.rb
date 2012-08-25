class CreateTipoVeics < ActiveRecord::Migration
  def change
    create_table :tipo_veics do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
