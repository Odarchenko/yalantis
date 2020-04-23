require "rails_helper"

RSpec.describe "Api Spec", :type => :request do
    let(:pass_params){build(:api_data)}
    it "receives 200 status" do
      post "/export", params: pass_params
      expect(response).to have_http_status 200
    end

    it "receives 422 status with no params" do
      pass_params = {}
      post "/export", params: pass_params
      expect(response).to have_http_status 422
    end
  end
