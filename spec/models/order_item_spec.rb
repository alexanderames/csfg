require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it 'has a valid factory' do
    expect(build(:order_item)).to be_valid
  end
  let(:order_item) do
    create(
      :order_item,
      order: create(
        :order
      ),
      variant: create(
        :variant
      )
    )
  end

  let!(:order) { order_item.order }
  let!(:variant) { order_item.variant }
  # Associations
  describe 'associations', associations: true do
    it { expect(order_item).to belong_to(:order) }
    it { expect(order_item).to belong_to(:variant) }
  end
  describe 'total' do
    it {
      expect(order_item.total).to eq(100)
    }
  end
end
