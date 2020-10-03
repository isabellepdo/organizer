# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_29_000216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atividades", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tarefa_id", null: false
    t.index ["tarefa_id"], name: "index_atividades_on_tarefa_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "celular"
    t.string "email"
    t.string "cnpj"
    t.string "endereco"
    t.integer "numero"
    t.string "bairro"
    t.integer "cep"
    t.string "cidade"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "observacao_do_projetos", force: :cascade do |t|
    t.bigint "projeto_id", null: false
    t.bigint "user_id", null: false
    t.text "mensagem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projeto_id"], name: "index_observacao_do_projetos_on_projeto_id"
    t.index ["user_id"], name: "index_observacao_do_projetos_on_user_id"
  end

  create_table "observacos_do_projeto", force: :cascade do |t|
    t.bigint "projeto_id"
    t.bigint "user_id"
    t.text "mensagem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["projeto_id"], name: "index_observacos_do_projeto_on_projeto_id"
    t.index ["user_id"], name: "index_observacos_do_projeto_on_user_id"
  end

  create_table "projetos", force: :cascade do |t|
    t.string "codigo"
    t.string "nome"
    t.string "descricao"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "prazo"
    t.bigint "tipo_de_projeto_id", null: false
    t.bigint "cliente_id", null: false
    t.index ["cliente_id"], name: "index_projetos_on_cliente_id"
    t.index ["tipo_de_projeto_id"], name: "index_projetos_on_tipo_de_projeto_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "nome"
    t.string "obs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tarefas", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "tipo_de_projeto_id", null: false
    t.index ["tipo_de_projeto_id"], name: "index_tarefas_on_tipo_de_projeto_id"
  end

  create_table "tipo_de_projetos", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atividades", "tarefas"
  add_foreign_key "observacao_do_projetos", "projetos"
  add_foreign_key "observacao_do_projetos", "users"
  add_foreign_key "projetos", "clientes"
  add_foreign_key "projetos", "tipo_de_projetos"
  add_foreign_key "tarefas", "tipo_de_projetos"
end
