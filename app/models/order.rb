class Order < ApplicationRecord
  belongs_to :customer
  has_many :variants

  enum status: %i[pending processing fulfilled delivered canceled]

  def total_cost
    @total_cost =
      variant.sum(&:cost)
  end
end
