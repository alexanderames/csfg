require 'rails_helper'

RSpec.describe Variant, type: :model do
  it 'has a valid factory' do
    expect(build(:variant)).to be_valid
  end
end
