require 'rails_helper'

RSpec.describe Message, type: :model do
  context 'when have association' do
    it { is_expected.to belong_to(:chat) }
  end 

  context 'when have enums' do
    it { expect(Message.roles).to eq({"system"=>0, "assistant"=>10, "user"=>20}) }
  end
end
