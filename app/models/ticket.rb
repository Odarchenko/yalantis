class Ticket < ApplicationRecord
  has_one :excavator

  validates :request_number, presence: true
  validates :sequence_number, presence: true
  validates :primary_sa_code, presence: true
end
