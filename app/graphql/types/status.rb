# frozen_string_literal: true

# Status Enum for Orders

class Types::Status < Types::BaseEnum
  value 'pending', 'pending order', value: 'pending'
  value 'processing', 'order being processed', value: 'processing'
  value 'fulfilled', 'order fulfilled', value: 'fulfilled'
  value 'delivered', 'delivered order', value: 'delivered'
  value 'canceled', 'order canceled', value: 'canceled'
end
