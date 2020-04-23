class TicketsController < ApplicationController

  def show
    run Ticket::Show
    render cell( Ticket::Cell::Show, result["model"] ), layout: false
  end

  def index
    run Ticket::Index
    render cell( Ticket::Cell::Index, result["model"] ), layout: false
  end
end
