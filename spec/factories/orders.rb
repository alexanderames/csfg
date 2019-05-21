FactoryBot.define do
  factory :order do
    status { 0 }
    total_cost { Faker::Number.decimal(2) }
    customer
  end
end
