class Order < ApplicationRecord
  belongs_to :customer
  has_many :variants

  enum status: %i[pending processing fulfilled delivered canceled]
end
