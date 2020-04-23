module Excavator::Contract
  class Create < Reform::Form
    property :ticket_id
    property :company_name
    property :address
    property :crew_on_site

    validates :ticket_id, presence: true
  end
end
