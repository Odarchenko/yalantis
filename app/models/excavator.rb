class Excavator < ApplicationRecord
  belongs_to :ticket

  validates :ticket_id, presence: true
end
