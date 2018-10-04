require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  describe "validation" do
    it "is valid with name and email" do
      expect(@user.valid?).to eq(true)
    end

    it "is not valid without name" do
      @user.name = ""
      expect(@user.valid?).to eq(false)
    end

    it "is not valid without email" do
      @user.email = ""
      expect(@user.valid?).to eq(false)
    end

    it "is not valid with invalid email" do
      invalid_addresses = 
        %w[user@example,com user_at_foo.org user.name@example.foo@bar_baz.com foo@bar+baz.com]
      invalid_addresses.each do |address|
        @user.email = address
        expect(@user.valid?).to eq(false)
      end
    end
    
    it "is not valid with duplicated email" do
      dup_user = @user.dup
      dup_user.email = @user.email.upcase
      @user.save
      expect(dup_user.valid?).to eq(false)
    end
    
    it "is not valid without password" do
      user = build(:user, password: "")
      expect(user.valid?).to eq(false)
    end
    
    it "is valid with proper length password" do
      user = build(:user, password: "a" * 6)
      expect(user.valid?).to eq(true)
    end

    it "is not valid with short length password" do
      user = build(:user, password: "a" * 5)
      expect(user.valid?).to eq(false)
    end
  end

  describe "parameters" do
    it "email should be saved as lower-case" do
      mixed_email = "FIRST@maIl.com"
      @user.save
      expect(mixed_email.downcase).to eq(@user.reload.email)
    end
  end
end
