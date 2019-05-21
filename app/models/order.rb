class Order < ApplicationRecord
  belongs_to :customer
  has_many :variants

  def total_cost
    variants.sum(&:cost)
  end

  # case status
  # when 1
  #   'processing'
  # when 2
  #   'fulfilled'
  # when 3
  #   'delivered'
  # when 4
  #   'canceled'
  # else
  #   'pending'
  # end
end
