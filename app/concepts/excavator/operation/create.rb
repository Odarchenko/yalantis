class Excavator::Create < Trailblazer::Operation
  step Model(Excavator, :new)
  step Contract::Build(constant: Excavator::Contract::Create)
  step Contract::Validate()
  step Contract::Persist()
end
