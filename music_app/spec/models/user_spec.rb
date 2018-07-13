require 'rails_helper'

RSpec.describe User, type: :model do

  subject(:user) do
    FactoryBot.build(:user,
      email: "joe@joe.com",
      password: "123456")
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }
  end

  describe "#is_password?" do
    it "returns true if password is correct" do
      expect(user.is_password?("123456")).to be true
    end

    it "returns false if password is not correct" do
      expect(user.is_password?("654321")).to be false
    end
  end
end
