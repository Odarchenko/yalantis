class Api::Export < Trailblazer::Operation
  step :create_ticket
  step :create_excavator

  def create_ticket(options, *)
    operation_result = ::Ticket::Create.call(params: ticket_params(options[:params]))
    if operation_result.success?
      options[:params]['ticket_id'] = operation_result['model'].id
      return true
    end
    options[:params][:errors] = operation_result[:"contract.default"].errors.messages
    false
  end

  def create_excavator(options, *)
    operation_result = ::Excavator::Create.call(params: excavator_params(options[:params]))
    if operation_result.success?
      return true
    end
    options[:params][:errors] = operation_result[:"contract.default"].errors.messages
    false
  end

  private

  def excavator_params(params)
    {
      ticket_id: params['ticket_id'],
      company_name: params.dig('Excavator', 'CompanyName'),
      crew_on_site: params.dig('Excavator', 'CrewOnsite'),
      address: params.fetch('Excavator', {})&.slice('Address', 'City', 'State', 'Zip').values.join(', ')
    }
  end

  def ticket_params(params)
    {
      request_number: params['RequestNumber'],
      sequence_number: params['SequenceNumber'],
      request_type: params['RequestType'],
      response_time: params.dig('DateTimes', 'ResponseDueDateTime')&.to_datetime,
      primary_sa_code: params.dig('ServiceArea', 'PrimaryServiceAreaCode', 'SACode'),
      additional_sa_codes: params.dig('ServiceArea', 'AdditionalServiceAreaCodes', 'SACode'),
      polygon: params.dig('ExcavationInfo', 'DigsiteInfo', 'WellKnownText')
    }
  end
end
