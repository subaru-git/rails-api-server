require "rails_helper"

RSpec.describe Path, type: :model do
  before do
    @path = build(:path)
  end

  describe "path validation" do
    it "if set path" do
      expect(@path.valid?).to eq(true)
    end

    it "if path is empty" do
      @path.path = ""
      expect(@path.valid?).to eq(false)
    end

    it "if path is already created" do
      @path.save
      samepath = build(:path)
      expect(samepath.valid?).to eq(false)
    end
  end
end
