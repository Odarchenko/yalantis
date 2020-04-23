FactoryBot.define do
  factory :excavator, class:Hash do
    ticket_id {1}
    address {'address'}
    company_name {"Normal company_name"}
    crew_on_site {true}

    initialize_with { attributes }
  end
end
