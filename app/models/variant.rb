class Variant < ApplicationRecord
  belongs_to :product
  has_one :order
end
