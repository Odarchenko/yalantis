class Ticket::Show < Trailblazer::Operation
  step Model(Ticket, :find_by)
end
