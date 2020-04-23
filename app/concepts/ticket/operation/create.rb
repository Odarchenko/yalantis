class Ticket::Create < Trailblazer::Operation
  step Model(Ticket, :new)
  step Contract::Build(constant: Ticket::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()
end
