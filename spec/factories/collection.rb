FactoryBot.define do
  factory :collection do
    Faker::Cannabis.medical_use
    Faker::Cannabis.health_benefit
  end
end
