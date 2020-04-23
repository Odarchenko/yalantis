class Ticket::Index < Trailblazer::Operation
  step :model!

  def model!(options, *)
    options['model'] = ::Ticket.all
  end
end
