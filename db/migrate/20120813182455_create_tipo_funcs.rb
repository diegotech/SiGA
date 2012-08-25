class CreateTipoFuncs < ActiveRecord::Migration
  def change
    create_table :tipo_funcs do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
