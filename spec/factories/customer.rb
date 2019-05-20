FactoryBot.define do
  factory :customer do
    Faker::Name.unique.name
    Faker::Internet.unique.email
  end
end
