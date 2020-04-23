require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:request_number) }
    it { is_expected.to validate_presence_of(:sequence_number) }
    it { is_expected.to validate_presence_of(:primary_sa_code) }
  end
end
