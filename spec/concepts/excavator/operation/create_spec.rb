require "rails_helper"
require_relative "../../../../app/models/excavator"
require_relative "../../../../app/concepts/excavator/operation/create"
require_relative "../../../../app/models/ticket"
require_relative "../../../../app/concepts/ticket/operation/create"

RSpec.describe Excavator::Create do
  let (:excavator) {build(:excavator)}
  let (:ticket) {build(:ticket)}

  it "works with correct data" do
    Ticket::Create.(params: ticket)
    excavator[:ticket_id] = Ticket.first.id
    result = Excavator::Create.(params: excavator)
    expect(result).to be_success
  end


  it "fail without ticket id" do
    excavator[:ticket_id] = nil
    result = Excavator::Create.(params: excavator)
    expect(result).to be_failure
  end
end
