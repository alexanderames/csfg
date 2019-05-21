require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(build(:order)).to be_valid
  end
  let(:customer) { build(:customer) }
  let(:order) { build(:order, total_cost: 9.99, customer: customer.id) }
  # Associations
  describe 'ActiveRecord associations', associations: true do
    it { expect(order).to belong_to(:customer) }
  end

  describe 'each order has a customer' do
    it { expect(order.customer).to eq(customer.id) }
  end
end
