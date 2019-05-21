# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :variant
  belongs_to :order

  def self.total
    Variant.sum(&:cost)
  end
end
