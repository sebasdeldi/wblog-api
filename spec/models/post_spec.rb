describe Post, type: :model do
  subject(:post) { create(:post) }
  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:description) }
  it { is_expected.to validate_presence_of(:status) }
end
