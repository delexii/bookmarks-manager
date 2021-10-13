require "pg"

feature "Tests index page" do
  scenario "exists" do
    con = PG.connect(dbname: "bookmark_manager_test")

    # Add the test data
    con.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    con.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    con.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
    visit "/"
    expect(page.status_code).to eq 200
  end
end
