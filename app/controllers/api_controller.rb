class ApiController < ApplicationController
  def export
    result = run Api::Export do |result|
      return render json: { message: 'success' }, status: 200
    end
    render json:  { message: result[:params]["errors"] }, status: 422
  end
end
