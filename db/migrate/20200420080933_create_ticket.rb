class CreateTicket < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :request_number, null: false
      t.string :sequence_number, null: false
      t.string :request_type
      t.datetime :response_time
      t.string :primary_sa_code, null: false
      t.string :additional_sa_codes, array: true, default: []
      t.text :polygon
    end
  end
end
