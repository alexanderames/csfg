class OrderItem < ApplicationRecord
  belongs_to :variant
  belongs_to :order

  def total
    Variant.sum(&:cost)
  end
end
