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

ActiveRecord::Schema.define(version: 20131101133948) do

  create_table "actividads", primary_key: "int_actividad", force: true do |t|
    t.integer  "int_actividad_tiposervicio"
    t.string   "var_actividad_descripcion",  limit: 200
    t.integer  "int_actividad_mes"
    t.integer  "int_actividad_red"
    t.datetime "dat_actividad_fecha"
    t.string   "var_actividad_estado",       limit: 1
    t.integer  "plantrabajo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actividads", ["plantrabajo_id"], name: "index_actividads_on_plantrabajo_id", using: :btree

  create_table "ambientes", primary_key: "int_ambiente_id", force: true do |t|
    t.string   "var_ambiente_nombre",    limit: 200
    t.integer  "int_ambiente_capmaximo"
    t.string   "var_ambiente_lugar",     limit: 150
    t.string   "var_ambiente_direccion", limit: 150
    t.string   "var_ambiente_estado",    limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "asignacionrecursos", primary_key: "int_asignacionrecurso_id", force: true do |t|
    t.string   "var_asignacionrecurso_area",        limit: 200
    t.integer  "var_asignacionrecurso_responsable"
    t.integer  "int_ambiente_id"
    t.datetime "dat_asignacionrecurso_fecInicio"
    t.datetime "dat_asignacionrecurso_fecFin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "var_asignacionrecurso_estado",      limit: 1
    t.string   "var_asignacionrecurso_motivo",      limit: 250
    t.integer  "int_asignacionrecurso_usuario"
    t.integer  "ambiente_id"
  end

  add_index "asignacionrecursos", ["ambiente_id"], name: "index_asignacionrecursos_on_ambiente_id", using: :btree

  create_table "detalle_sms", primary_key: "int_detallesms_id", force: true do |t|
    t.integer  "sms_id"
    t.integer  "persona_id"
    t.integer  "int_categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detalle_sms", ["persona_id"], name: "index_detalle_sms_on_persona_id", using: :btree
  add_index "detalle_sms", ["sms_id"], name: "index_detalle_sms_on_sms_id", using: :btree

  create_table "detallematerials", force: true do |t|
    t.integer  "material_id"
    t.integer  "asignacionrecurso_id"
    t.string   "var_detallematerial_estado", limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "detallematerials", ["asignacionrecurso_id"], name: "index_detallematerials_on_asignacionrecurso_id", using: :btree
  add_index "detallematerials", ["material_id"], name: "index_detallematerials_on_material_id", using: :btree

  create_table "eventos", primary_key: "int_evento_id", force: true do |t|
    t.integer  "int_evento_tipo"
    t.string   "var_evento_nombre",      limit: 150
    t.datetime "dat_evento_fecInicio"
    t.datetime "dat_evento_fecFin"
    t.time     "dat_evento_hora"
    t.string   "var_evento_descripcion", limit: 500
    t.string   "var_evento_direccion",   limit: 250
    t.string   "var_evento_estado",      limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listacontactos", primary_key: "int_listacontacto", force: true do |t|
    t.string   "var_listacontacto_estado", limit: 1
    t.string   "var_listacontacto_email",  limit: 100
    t.integer  "evento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "listacontactos", ["evento_id"], name: "index_listacontactos_on_evento_id", using: :btree

  create_table "lugars", primary_key: "int_lugar_id", force: true do |t|
    t.string   "var_lugar_descripcion", limit: 100
    t.string   "var_lugar_estado",      limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", primary_key: "int_material", force: true do |t|
    t.integer  "int_material_tipo"
    t.string   "var_material_marca",    limit: 50
    t.string   "var_material_color",    limit: 50
    t.float    "dec_material_cantidad"
    t.string   "var_material_estado",   limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true, using: :btree
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true, using: :btree

  create_table "personas", primary_key: "int_persona_id", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "var_persona_nombres",       limit: 45
    t.string   "var_persona_apellidos",     limit: 45
    t.integer  "int_persona_edad"
    t.date     "dat_persona_fecNacimiento"
    t.string   "var_persona_profesion",     limit: 45
    t.string   "var_persona_ocupacion",     limit: 45
    t.string   "var_persona_sexo",          limit: 1
    t.string   "var_persona_dni",           limit: 10
    t.string   "var_persona_estado",        limit: 1
    t.integer  "int_persona_diaVisita"
    t.time     "dat_persona_horaVisita"
    t.string   "var_persona_email"
    t.integer  "persona_id"
  end

  add_index "personas", ["persona_id"], name: "index_personas_on_persona_id", using: :btree

  create_table "plantrabajos", primary_key: "int_plantrabajo", force: true do |t|
    t.integer  "int_plantrabajo_anio"
    t.string   "var_plantrabajo_estado", limit: 1
    t.integer  "persona_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plantrabajos", ["persona_id"], name: "index_plantrabajos_on_persona_id", using: :btree

  create_table "sms", primary_key: "int_sms_id", force: true do |t|
    t.string   "var_sms_mensaje",          limit: 250
    t.datetime "dat_detallesms_fechahora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubigeos", primary_key: "int_ubigeo_id", force: true do |t|
    t.string   "string_ubigeo_descripcion", limit: 50
    t.integer  "int_ubigeo_departamento"
    t.integer  "int_ubigeo_provincia"
    t.integer  "int_ubigeo_distrito"
    t.integer  "int_ubigeo_dependencia"
    t.float    "float_ubigeo_latitud"
    t.float    "float_ubigeo_longitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
