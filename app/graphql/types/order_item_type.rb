# frozen_string_literal: true

module Types
  class OrderItemType < BaseObject
    field :id, ID, null: false
    field :variant, [VariantType], null: false
    field :order_id, ID, null: false
    field :created_at, DateTimeType, null: false

    def variant
      Variant.where(id: @object.variant_id)
    end
  end
end
