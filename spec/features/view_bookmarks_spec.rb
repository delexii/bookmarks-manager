require "pg"

feature "Shows bookmarks" do
  scenario "page allows user to view bookmarks" do
    con = PG.connect(dbname: "bookmark_manager_test")

    # Add the test data
    con.exec("INSERT INTO bookmarks VALUES(1, 'Makers Academy', 'http://www.makersacademy.com/');")
    con.exec("INSERT INTO bookmarks VALUES(2, 'Destroy All Software', 'http://www.destroyallsoftware.com/');")
    con.exec("INSERT INTO bookmarks VALUES(3, 'Google', 'http://www.google.com/');")
    visit "/bookmarks"
    expect(page).to have_content("http://www.destroyallsoftware.com/")
    expect(page).to have_content("http://www.google.com/")
    expect(page).to have_content("http://www.makersacademy.com/")
  end
end
