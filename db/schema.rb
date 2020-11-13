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

ActiveRecord::Schema.define(version: 2020_11_12_000141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compromissos", force: :cascade do |t|
    t.string "data"
    t.string "hora"
    t.string "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "compromissos_empregados", id: false, force: :cascade do |t|
    t.bigint "compromisso_id", null: false
    t.bigint "empregado_id", null: false
  end

  create_table "empregados", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.bigint "empresa_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_empregados_on_empresa_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string "razao_social"
    t.string "cnpj"
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "static_pages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "empregados", "empresas"
end
