FactoryBot.define do
  factory :ticket, class:Hash do
    request_number {'12312313'}
    sequence_number {'sequence_number'}
    primary_sa_code {'super_sa_code'}
    request_type {"Normal"}
    response_time {"2011-07-13 23:59:59"}
    additional_sa_codes {["ZZL01", "ZZL02", "ZZL03"]}
    polygon {"POLYGON((-81.13390268058475 32.07206917625161,-81...."}

    initialize_with { attributes }
  end
end
