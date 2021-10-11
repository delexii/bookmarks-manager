feature "Shows bookmarks" do
  scenario "page allows user to view bookmarks" do
    visit "/bookmarks"
    expect(page).to have_content "Bookmarks"
  end
end
