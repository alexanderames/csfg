# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_item

  enum status: %i[pending processing fulfilled delivered canceled]

  before_save :calc_total

  def calc_total
    sum_value = OrderItem.total
    self.total_cost = sum_value
  end
end
