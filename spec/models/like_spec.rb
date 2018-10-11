require "rails_helper"

RSpec.describe Like, type: :model do
  before do
    @like = build(:like)
  end

  describe "like validation" do
    it "if set like" do
      expect(@like.valid?).to eq(true)
    end
  end
end
