FactoryBot.define do
  factory :product do
    name { Faker::Cannabis.cannabinoid_abbreviation }
  end
end
