FactoryBot.define do
  factory :message do
    chat { create(:chat) }
    role { "user" }
    content { "How long I can run all the world?" }
  end
end
