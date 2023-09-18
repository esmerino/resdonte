FactoryBot.define do
  factory :message do
    chat { nil }
    role { 1 }
    content { "MyString" }
  end
end
