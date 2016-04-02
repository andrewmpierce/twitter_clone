class TweetsController < ActionController::Base

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)

    redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit([:body])
  end

end
