require 'rails_helper'

RSpec.describe Collection, type: :model do
  it 'has a valid factory' do
    expect(build(:collection)).to be_valid
  end
  it { should have_and_belong_to_many(:products) }
end
