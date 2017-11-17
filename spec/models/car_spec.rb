require 'rails_helper'

describe Car, type: :model do

  describe "Validations" do

    it { is_expected.to validate_presence_of(:make) }
    it { is_expected.to validate_presence_of(:car_model) }
    it { is_expected.to validate_presence_of(:milage) }
    it { is_expected.to validate_presence_of(:condition) }

  end

  describe "Associations" do

    it { is_expected.to belong_to(:user) }
    
  end

end
