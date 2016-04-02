require "rails_helper"

feature "user can create tweets" do
  scenario "successfully" do
    visit "/"
    click_on "Add New Tweet"
    fill_in "tweet_body", with: "Hello, I made a tweet"
    click_on "Submit"
    expect(page).to have_content("Hello, I made a tweet")
  end
end
