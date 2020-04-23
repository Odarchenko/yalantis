class CreateExcavator < ActiveRecord::Migration[6.0]
  def change
    create_table :excavators do |t|
      t.integer :ticket_id, null: false, index: true
      t.string :company_name, default: ''
      t.string :address
      t.boolean :crew_on_site, default: false
    end
  end
end
