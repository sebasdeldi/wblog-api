describe Like, type: :model do
  subject(:like) { create(:like) }
  it { is_expected.to be_valid }
  it { is_expected.to validate_presence_of(:user) }
  it { is_expected.to validate_presence_of(:post) }
end
