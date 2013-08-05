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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130801172825) do

  create_table "marcas", force: true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mililitros", force: true do |t|
    t.string "descripcion"
  end

  create_table "perfumes", force: true do |t|
    t.string   "nombre"
    t.integer  "marca_id"
    t.integer  "sexo_id"
    t.integer  "tipo_id"
    t.integer  "mililitro_id"
    t.string   "imagen"
    t.decimal  "precio",       precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "perfumes", ["marca_id"], name: "index_perfumes_on_marca_id"
  add_index "perfumes", ["mililitro_id"], name: "index_perfumes_on_mililitro_id"
  add_index "perfumes", ["sexo_id"], name: "index_perfumes_on_sexo_id"
  add_index "perfumes", ["tipo_id"], name: "index_perfumes_on_tipo_id"

  create_table "sexo", force: true do |t|
    t.string "descripcion"
  end

  create_table "tipos", force: true do |t|
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
