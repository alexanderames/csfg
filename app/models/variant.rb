class Variant < ApplicationRecord
  belongs_to :product
  has_many :order_item

end
