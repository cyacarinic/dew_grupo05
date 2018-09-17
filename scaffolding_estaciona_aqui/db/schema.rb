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

ActiveRecord::Schema.define(version: 20180917003026) do

  create_table "additional_services", force: :cascade do |t|
    t.integer "parking_id"
    t.string "nombre", limit: 45
    t.string "descripcion", limit: 45
    t.decimal "precio_hora", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string "nombre", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_histories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "parking_id"
    t.datetime "fecha_inicio"
    t.datetime "fecha_fin"
    t.datetime "fecha_registro"
    t.datetime "fecha_cancelacion"
    t.string "motivo_cancelacion", limit: 300
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.string "descripcion", limit: 45
    t.string "telefono", limit: 9
    t.string "tipo_estacionamiento", limit: 10
    t.decimal "precio_hora", precision: 10, scale: 2
    t.string "imagen", limit: 50
    t.string "departamento", limit: 50
    t.string "ciudad", limit: 50
    t.string "distrito", limit: 50
    t.string "direccion", limit: 50
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "parking_id"
    t.string "comentario", limit: 300
    t.integer "puntuacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.string "descripcion", limit: 45
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "usertype_id"
    t.integer "documenttype_id"
    t.string "nombres", limit: 45
    t.string "apellidos", limit: 45
    t.string "correo", limit: 45
    t.integer "numero_documento"
    t.string "contrasenia", limit: 45
    t.string "genero", limit: 10
    t.datetime "fecha_nacimiento"
    t.string "telefono", limit: 9
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
