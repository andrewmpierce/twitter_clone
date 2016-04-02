require "rails_helper"

feature "user sees list of tweets" do
  scenario "successfully" do
    first_tweet = Tweet.create(body: "Hello world")
    second_tweet = Tweet.create(body: "Hello again")

    visit tweets_path

    expect(page).to have_content(first_tweet.body)
    expect(page).to have_content(second_tweet.body)
  end
end
