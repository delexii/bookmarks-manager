require "bookmark"

RSpec.describe Bookmark do
  describe "#all" do
    it "returns a list of bookmarks" do
      Bookmark.create(title: "Makers Academy", url: "http://www.makersacademy.com/")
      Bookmark.create(title: "Destroy All Software", url: "http://www.destroyallsoftware.com/")
      Bookmark.create(title: "Google", url: "http://www.google.com/")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.title).to eq "Makers Academy"
      expect(bookmarks.first.url).to eq "http://www.makersacademy.com/"
    end
  end
  describe "#create" do
    it "creates a new bookmark" do
      bookmark = Bookmark.create(url: "http://www.facebook.com", title: "Facebook")
      persisted_data = PG.connect(dbname: "bookmark_manager_test").query("SELECT * FROM bookmarks WHERE id = #{bookmark.id};")
      p "Hello"
      p bookmark
      p persisted_data
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data.first["id"]
      expect(bookmark.title).to eq "Facebook"
      expect(bookmark.url).to eq "http://www.facebook.com"
    end
  end
end
