require 'rails_helper'

RSpec.describe AiResponseWorker do
  describe '#perform', :vcr do
    let(:message) { create(:message, role: 'user', content: 'How long I can run all the world?')}

    it do
      VCR.use_cassette("response") do
        described_class.new.perform(message.chat_id)
        expect(Message.count).to eq(2)
        expect(Message.first.role).to eq('user')
        expect(Message.first.content).to eq('How long I can run all the world?')
        expect(Message.last.role).to eq('assistant')
        expect(Message.last.content).to include('circumference is approximately 40,075 kilometers (24,901 miles)')
      end
    end
  end
end
