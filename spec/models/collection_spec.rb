RSpec.describe Collection, type: :model do
  it { should have_and_belong_to_many(:products) }
end
