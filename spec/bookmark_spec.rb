require "bookmark"
RSpec.describe Bookmark do
  describe "#all" do
    it "returns a list of bookmarks" do
      expect(subject.all).to eq ["travel"]
    end
  end
end
