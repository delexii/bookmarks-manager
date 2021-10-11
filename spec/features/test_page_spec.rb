feature "Tests index page" do
  scenario "exists" do
    visit '/'
    expect(page.status_code).to eq 200
  end
end
