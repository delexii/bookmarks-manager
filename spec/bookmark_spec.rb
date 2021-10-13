require "bookmark"

RSpec.describe Bookmark do
  describe "#all" do
    it "returns a list of bookmarks" do
      Bookmark.create("Makers Academy", "http://www.makersacademy.com/")
      Bookmark.create("Destroy All Software", "http://www.destroyallsoftware.com/")
      Bookmark.create("Google", "http://www.google.com/")

      bookmarks = Bookmark.all

      expect(bookmarks).to include({ title: "Makers Academy", url: "http://www.makersacademy.com/" })
      expect(bookmarks).to include({ title: "Destroy All Software", url: "http://www.destroyallsoftware.com/" })
      expect(bookmarks).to include({ title: "Google", url: "http://www.google.com/" })
    end
  end
  describe "#create" do
    it "creates a new bookmark" do
      described_class.create("Facebook", "http://www.facebook.com")
      expect(described_class.all).to include({ title: "Facebook", url: "http://www.facebook.com" })
    end
  end
end
