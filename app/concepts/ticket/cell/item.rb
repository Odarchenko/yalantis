module Ticket::Cell
  class Item < Trailblazer::Cell
    def title
      link_to model.request_number, model unless model.nil?
    end

    property :request_number, :sequence_number, :request_type
  end
end
