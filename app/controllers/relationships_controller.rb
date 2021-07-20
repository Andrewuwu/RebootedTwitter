class RelationshipsController < ApplicationController

    def create
        @model = Model.find(params[:model_id])
        @rel = Relationship.new(follower_id: current_model.id, followed_id: @model.id)
        @rel.save
        redirect_to model_path(@model)
    end

    def show
        @model = Model.find(params[:model_id])
    end

    def destroy
        @rel = Relationship.find(params[:id])
        @rel.destroy
        redirect_to model_path(@rel.followed_id)
    end
end
