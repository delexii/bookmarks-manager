
feature "Delete bookmarks" do
  scenario "page allows user to delete bookmarks from a list" do
    visit ("/")
    fill_in :title, with: "Makers Academy"
    fill_in :url, with: "http://www.makersacademy.com/"
    click_button("Add bookmark")
    visit ("/bookmarks")
    click_button("Delete")
    expect(page).not_to have_content("Makers Academy")
  end
end
