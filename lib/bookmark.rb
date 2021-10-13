require "pg"

class Bookmark
  def self.all
    if ENV["ENVIRONMENT"] == "test"
      con = PG.connect(dbname: "bookmark_manager_test")
    else
      con = PG.connect(dbname: "bookmark_manager")
    end
    result = con.exec ("SELECT * FROM bookmarks")
    result.map { |bookmark| { title: bookmark["title"], url: bookmark["url"] } }
  end

  def self.create(title, url)
    if ENV["ENVIRONMENT"] == "test"
      con = PG.connect :dbname => "bookmark_manager_test"
    else
      con = PG.connect :dbname => "bookmark_manager"
    end

    con.exec "INSERT INTO bookmarks (title, url) VALUES ('#{title}','#{url}')"
  end
end
