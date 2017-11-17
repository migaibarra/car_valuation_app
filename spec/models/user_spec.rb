require 'rails_helper'

describe User, type: :model do
  describe "Validations" do

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_hash) }
    subject { FactoryBot.create(:user) }
    it { is_expected.to validate_uniqueness_of(:email) }

    context "when the @ character is not included" do
      it "is not valid without a properly formated email" do
        user_example = FactoryBot.build(:user)
        user_example.email = "hello"
        expect(user_example).to_not be_valid
      end
    end

    context "when no local-part is privided for the mailbox" do
      it "is not valid without a properly formated email" do
        user_example = FactoryBot.build(:user)
        user_example.email = "@hello"
        expect(user_example).to_not be_valid
      end
    end

  end
end
