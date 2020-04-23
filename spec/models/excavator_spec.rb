require 'rails_helper'

RSpec.describe Excavator, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:ticket_id) }
  end
end
