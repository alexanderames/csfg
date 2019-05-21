# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderItem, type: :model do
  it 'has a valid factory' do
    expect(build(:order_item)).to be_valid
  end

  let(:order_item) { build(:order_item) }

  # Associations
  describe 'associations', associations: true do
    it { expect(order_item).to belong_to(:order) }
    it { expect(order_item).to belong_to(:variant) }
  end
end
