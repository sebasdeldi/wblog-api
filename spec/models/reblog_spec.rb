describe Reblog, type: :model do
  subject(:reblog) { create(:reblog) }
  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:post) }
end
