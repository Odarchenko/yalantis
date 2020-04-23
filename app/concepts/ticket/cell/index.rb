module Ticket::Cell
  class Index < Trailblazer::Cell
    def total
      return 'No posts' if model.empty?
    end
  end
end
