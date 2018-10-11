require 'rails_helper'

RSpec.describe History, type: :model do
  before do
    @history = build(:history)
  end

  describe "history validation" do
    it "if set history" do
      expect(@history.valid?).to eq(true)
    end

    it "if history is already created" do
      @history.save
      samehistory = build(:history)
      samehistory.user = @history.user
      expect(samehistory.valid?).to eq(true)
    end
  end
end
