class TweetsController < ApplicationController
    before_action :authenticate_model!
    def index
        @tweets = Tweet.all.order("created_at DESC")
        @tweet = Tweet.new
    end

    def show
        @tweet = Tweet.find(params[:id])
    end

    def new
        @tweet = Tweet.new
    end

    def create
        @tweet = Tweet.new(tweet_params)
        if @tweet.save
            redirect_to root_path
        else
            render "new"
        end
    end

    def edit
        @tweet = Tweet.find(params[:id])
    end

    def update
        @tweet = Tweet.find(params[:id])
        if @tweet.update(tweet_params)   
            redirect_to root_path
        else
            render :new
        end
    end

    def destroy
        @tweet = Tweet.find(params[:id])
        @tweet.destroy
        redirect_to root_path
    end

    private
        def tweet_params
            params.require(:tweet).permit(:body,:mood,:model_id)
        end
end
