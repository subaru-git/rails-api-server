require "rails_helper"

RSpec.describe Tag, type: :model do
  before do
    @tag = build(:tag)
  end

  describe "tag validation" do
    it "if set tag" do
      expect(@tag.valid?).to eq(true)
    end

    it "if tag is empty" do
      @tag.tag = ""
      expect(@tag.valid?).to eq(false)
    end

    it "if tag is already created" do
      @tag.save
      sametag = build(:tag)
      expect(sametag.valid?).to eq(false)
    end
  end
end
