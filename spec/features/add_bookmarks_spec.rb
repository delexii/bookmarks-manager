require "pg"

feature "Add bookmarks" do
  scenario "page allows user to add bookmarks to a list" do
    visit ("/")
    fill_in :title, with: "Makers Academy"
    fill_in :url, with: "http://www.makersacademy.com/"
    click_button("Add bookmark")
    visit ("/bookmarks")
    expect(page).to have_content("http://www.makersacademy.com/")
  end
end
