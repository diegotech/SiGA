class CreateTipoPessoas < ActiveRecord::Migration
  def change
    create_table :tipo_pessoas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
