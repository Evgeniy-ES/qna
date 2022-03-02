FactoryBot.define do
  factory :answer do
    text { "My answer" }
    correct { false }

    trait :invalid do
      text { nil }
    end
  end
end
