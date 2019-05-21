# frozen_string_literal: true

module Types
  class VariantType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :cost, Float, null: false
    field :stock_amount, Int, null: false
    field :weight, Float, null: false
    field :product_id, ID, null: false
  end
end
