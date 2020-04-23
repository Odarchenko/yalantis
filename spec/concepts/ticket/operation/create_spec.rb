  require "rails_helper"
  require_relative "../../../../app/models/ticket"
  require_relative "../../../../app/concepts/ticket/operation/create"

  RSpec.describe Ticket::Create do
    let (:ticket) {build(:ticket)}

    it "works correct data" do
      result = Ticket::Create.(params: ticket)
      expect(result).to be_success
    end


    it "fail without request_number" do
      ticket[:request_number] = nil
      result = Ticket::Create.(params: ticket)
      expect(result).to be_failure
    end


    it "fail without sequence_number" do
      ticket[:sequence_number] = nil
      result = Ticket::Create.(params: ticket)
      expect(result).to be_failure
    end

    it "fail without primary_sa_code" do
      ticket[:primary_sa_code] = nil
      result = Ticket::Create.(params: ticket)
      expect(result).to be_failure
    end

    it "check if model " do
      ticket[:primary_sa_code] = nil
      result = Ticket::Create.(params: ticket)
      expect(result).to be_failure
    end
  end
