FactoryBot.define do
  factory :variant do
    Faker::Cannabis.unique.strain
    Faker::Number.decimal(2)
    Faker::Number.non_zero_digit
    Faker::Number.decimal(2)
    product
  end
end
