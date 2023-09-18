FactoryBot.define do
  factory :chat do
    messages { create(:messages) }
  end
end
