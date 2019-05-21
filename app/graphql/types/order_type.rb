# frozen_string_literal: true

module Types
  class OrderType < BaseObject
    field :id, ID, null: false
    field :customer, CustomerType, null: false
    field :order_item, [OrderItemType], null: false
    field :status, Status, null: false
    field :total_cost, Float, null: false
    field :created_at, DateTimeType, null: false
  end
end
