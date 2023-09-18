require 'rails_helper'

RSpec.describe Chat, type: :model do
 context 'when have association' do
    it { is_expected.to have_many(:messages) }
  end 
end
