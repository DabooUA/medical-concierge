ActiveRecord::Schema.define(version: 2021_11_09_183813) do

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "hospital_name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
    t.string "provider"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "doctor_id"
    t.string "prescription_name"
    t.string "pharmacy_name"
    t.string "pharmacy_address"
    t.integer "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "prescription_date"
  end

end
