class CommentsController < ApplicationController

    def new
        @tweet = Tweet.find(params[:tweet_id])
        @comment = Tweet.comments.new
    end
    
    def show
    end

    def create
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.create(comment_params)
        if @comment.save
            redirect_to tweet_path(@tweet)
        end
    end 

    def edit
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.find(params[:id])
    end 

    def update
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.find(params[:id])
        if @comment.save(comment_params)
            redirect_to tweet_path(@tweet)
        else
            render :new
        end

    end

    def destroy
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.find(params[:id])
        @comment.destroy
        redirect_to root_path
        
    end

    private
    def comment_params
        params.require(:comment).permit(:comment, :commenter, :model_id)
    end
end
