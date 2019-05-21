# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(build(:order)).to be_valid
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

  describe 'default status is pending' do
    it { expect(order.status).to eq('pending') }
  end


  # Associations
  describe 'associations', associations: true do
    it { expect(order).to belong_to(:customer) }
    it { expect(order).to have_many(:order_item) }
  end


  # Methd
  describe 'calc_total' do
    it {
      expect(order.calc_total).to eq(100)
    }
  end
end
