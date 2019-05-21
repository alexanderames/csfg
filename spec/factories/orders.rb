FactoryBot.define do
  factory :order do
    status { 1 }
    total_cost { Faker::Number.decimal(2) }
    customer
  end
end
