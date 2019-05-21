FactoryBot.define do
  factory :collection do
    name { Faker::Cannabis.medical_use }
    type { Faker::Cannabis.health_benefit }
  end
end
