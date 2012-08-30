# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201208291044402) do

  create_table "acessos", :force => true do |t|
    t.integer  "residencia_id"
    t.integer  "motorista_id"
    t.integer  "funcionario_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "acessos", ["funcionario_id"], :name => "index_acessos_on_funcionario_id"
  add_index "acessos", ["motorista_id"], :name => "index_acessos_on_motorista_id"
  add_index "acessos", ["residencia_id"], :name => "index_acessos_on_residencia_id"

  create_table "cores", :force => true do |t|
    t.string   "cor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "funcionarios", :force => true do |t|
    t.integer  "matricula"
    t.string   "nome"
    t.string   "senha"
    t.integer  "tipo_func_id"
    t.integer  "uh_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "funcionarios", ["tipo_func_id"], :name => "index_funcionarios_on_tipo_func_id"
  add_index "funcionarios", ["uh_id"], :name => "index_funcionarios_on_uh_id"

  create_table "marcas", :force => true do |t|
    t.string   "marca"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "modelos", :force => true do |t|
    t.string   "modelo"
    t.integer  "marca_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "modelos", ["marca_id"], :name => "index_modelos_on_marca_id"

  create_table "motorista", :force => true do |t|
    t.integer  "veiculo_id"
    t.integer  "residencia_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "motorista", ["residencia_id"], :name => "index_motorista_on_residencia_id"
  add_index "motorista", ["veiculo_id"], :name => "index_motorista_on_veiculo_id"

  create_table "motoristas", :force => true do |t|
    t.integer  "veiculo_id"
    t.integer  "residencia_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "motoristas", ["residencia_id"], :name => "index_motoristas_on_residencia_id"
  add_index "motoristas", ["veiculo_id"], :name => "index_motoristas_on_veiculo_id"

  create_table "pessoas", :force => true do |t|
    t.string   "nome"
    t.string   "rg"
    t.integer  "tipo_pessoa_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pessoas", ["tipo_pessoa_id"], :name => "index_pessoas_on_tipo_pessoa_id"

  create_table "residencia", :force => true do |t|
    t.integer  "uh_id"
    t.integer  "pessoa_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "residencia", ["pessoa_id"], :name => "index_residencia_on_pessoa_id"
  add_index "residencia", ["uh_id"], :name => "index_residencia_on_uh_id"

  create_table "tipo_funcs", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_pessoas", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_uhs", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipo_veics", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uhs", :force => true do |t|
    t.integer  "tipo_uh_id"
    t.string   "quadra"
    t.string   "conjunto"
    t.string   "numero"
    t.string   "telefone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "uhs", ["tipo_uh_id"], :name => "index_uhs_on_tipo_uh_id"

  create_table "veiculos", :force => true do |t|
    t.string   "placa"
    t.integer  "tipo_veic_id"
    t.integer  "cor_id"
    t.integer  "modelo_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "veiculos", ["cor_id"], :name => "index_veiculos_on_cor_id"
  add_index "veiculos", ["modelo_id"], :name => "index_veiculos_on_modelo_id"
  add_index "veiculos", ["tipo_veic_id"], :name => "index_veiculos_on_tipo_veic_id"

end
