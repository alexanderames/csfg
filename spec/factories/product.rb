FactoryBot.define do
  factory :product do
    Faker::Cannabis.cannabinoid_abbreviation
  end
end
