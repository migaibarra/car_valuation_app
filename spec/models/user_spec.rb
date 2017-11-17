require 'rails_helper'

describe User, type: :model do
  let(:user_example) { build(:user) }

  describe "Validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_hash) }
    subject { FactoryBot.create(:user) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end
end
