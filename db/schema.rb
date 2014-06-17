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

ActiveRecord::Schema.define(version: 20140617152905) do

  create_table "administradors", force: true do |t|
    t.string   "tipodoc"
    t.string   "numedoc"
    t.string   "nombre"
    t.string   "apellido"
    t.boolean  "genero"
    t.string   "direccion"
    t.string   "correo"
    t.string   "telefono"
    t.string   "area"
    t.string   "rol"
    t.string   "lineacargo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adminprincipals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informacions", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "information", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inicios", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instructors", force: true do |t|
    t.integer  "tipodocumento_id"
    t.string   "numedoc"
    t.string   "nombre"
    t.string   "apellido"
    t.boolean  "genero"
    t.string   "direccion"
    t.string   "correo"
    t.string   "telefono"
    t.string   "area"
    t.string   "rol"
    t.string   "lineacargo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "instructors", ["tipodocumento_id"], name: "index_instructors_on_tipodocumento_id"

  create_table "operacios", force: true do |t|
    t.string   "area"
    t.string   "cantidadProceso"
    t.string   "maquinas"
    t.string   "tiposTelas"
    t.string   "TiempoEstandar"
    t.string   "instructorCargo"
    t.string   "insumos"
    t.string   "Referencia"
    t.string   "Descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipodocumentos", force: true do |t|
    t.string   "CC"
    t.string   "TI"
    t.string   "CE"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
