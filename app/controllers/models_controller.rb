class ModelsController < ApplicationController
    def show
        @model = Model.find(params[:id])
        @rel = @model.followers.find_by(follower: current_model)
      end
  
end
