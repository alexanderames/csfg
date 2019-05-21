module Types
  class QueryType < Types::BaseObject
    # entry points for queries on the schema.
    field :products, [ProductType], null: false

    def products
      Product.all
    end

    field :variants, [VariantType], null: false

    def variants
      Variant.all
    end

    field :items, [OrderItemType], null: false

    def items
      OrderItem.all
    end

    field :orders, [OrderType], null: false

    def orders
      Order.all
    end
  end
end
