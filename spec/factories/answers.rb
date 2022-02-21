FactoryBot.define do
  factory :answer do
    text { "MyText" }
    correct { false }

    trait :invalid do
      text { nil }
    end
  end
end
