require "rails_helper"

feature "user can sign in" do
  scenario "successfully" do
    test_user = User.create(username: "Test_User", password: "abc123")

    visit "/signin"

    fill_in "username", with: "Test_User"
    fill_in "password", with: "abc123"
    click_on "Sign In"
    expect(page).to have_content(test_user.username)
  end
end
