module Ticket::Contract
  class Create < Reform::Form
    property :request_number
    property :sequence_number
    property :primary_sa_code
    property :request_type
    property :response_time
    property :additional_sa_codes
    property :polygon

    validates :request_number, presence: true
    validates :sequence_number, presence: true
    validates :primary_sa_code, presence: true
  end
end
