  require "rails_helper"
  require_relative "../../../../app/concepts/api/operation/export"

  RSpec.describe Api::Export do
    let (:api_data) {build(:api_data)}

    it "works with correct data" do
      result = Api::Export.( params: api_data )
      expect(result).to be_success
    end

    it "fails with out request number" do
      api_data["RequestNumber"] = nil
      result = Api::Export.( params: api_data )
      expect(result).to be_failure
    end
  end

