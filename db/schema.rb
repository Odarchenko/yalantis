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

ActiveRecord::Schema.define(version: 2020_04_20_080950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "excavators", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.string "company_name", default: ""
    t.string "address"
    t.boolean "crew_on_site", default: false
    t.index ["ticket_id"], name: "index_excavators_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "request_number", null: false
    t.string "sequence_number", null: false
    t.string "request_type"
    t.datetime "response_time"
    t.string "primary_sa_code", null: false
    t.string "additional_sa_codes", default: [], array: true
    t.text "polygon"
    t.index ["request_number"], name: "index_tickets_on_request_number"
  end

end
