require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = build(:article)
  end

  describe "content validation" do
    it "if set content" do
      expect(@article.valid?).to eq(true)
    end

    it "if content is empty" do
      @article.content = ""
      expect(@article.valid?).to eq(false)
    end
  end  
end
