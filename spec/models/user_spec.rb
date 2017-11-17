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

  describe "Methods" do

    it "creates a password_hash that is not equal to the password" do
      user_example = FactoryBot.build(:user)
      expect(user_example.password_hash).to_not eq "Passw0rd"
    end
    it "returns nil if the password and email is not authenticated" do
      user_example = FactoryBot.create(:user)
      expect(User.authenticate(user_example.email, "password")).to be_nil
    end
    it "returns the user if the password and email are authenticated" do
      user_example = FactoryBot.create(:user)
      expect(User.authenticate(user_example.email, "Pa$$w0rd"))
    end

  end

end
