require "rails_helper"

feature "timestamps are shown" do
  scenario "successfully" do
    first_tweet = Tweet.create(body: "Hello world")
    second_tweet = Tweet.create(body: "Hello again")

    visit tweets_path

    expect(page).to have_content(first_tweet.created_at)
    expect(page).to have_content(second_tweet.created_at)
  end
end
