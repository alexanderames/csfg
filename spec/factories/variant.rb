FactoryBot.define do
  factory :variant do
    name { Faker::Cannabis.strain }
    cost { Faker::Number.decimal(2) }
    stock_amount {Faker::Number.non_zero_digit }
    weight { Faker::Number.decimal(2) }
    product
  end
end
