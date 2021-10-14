require "pg"

def setup_test_database
  p "Setting up test database..."
  con = PG.connect(dbname: "bookmark_manager_test")
  con.exec("TRUNCATE bookmarks;")
end

def persisted_data(id:)
  connection = PG.connect(dbname: "bookmark_manager_test")
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
  result.first
end
