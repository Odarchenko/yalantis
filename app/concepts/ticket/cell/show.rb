module Ticket::Cell
  class Show < Trailblazer::Cell
    REGEX_FOR_POLYGON = /\(\(([^)]+)\)\)/.freeze

    property :request_number, :sequence_number, :request_type, :response_time, :primary_sa_code, :additional_sa_codes, :polygon

    def excavator_company_name
      model.excavator&.company_name
    end

    def excavator_address
      model.excavator&.address
    end

    def excavator_crew_on_site
      model.excavator&.crew_on_site
    end

    def polygon
      coordinates_string = model.polygon.scan( REGEX_FOR_POLYGON ).flatten.first

      return [] unless coordinates_string

      coordinates_string.split(',').map{ |coordinates|  { lat: coordinates.split(' ')[0].to_f, lng: coordinates.split(' ')[1].to_f }.to_json }
    end
  end
end
