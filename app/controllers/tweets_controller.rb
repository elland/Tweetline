class TweetsController < ApplicationController
  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets }
    end
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(params[:tweet])

    if @tweet.save
      redirect_to :back, notice: "Successfully posted text!"
    else
      redirect_to :back, alert: "Text too long!"
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    respond_to do |format|
      format.html { redirect_to tweets_url }
      format.json { head :ok }
    end
  end
end
