class Api::V1::TagsController < ApplicationController
    def index
        tags = Tag.all
        render json: tags
    end

    def create
        tag = Tag.new(tag_params)
        if tag.save
            render json: tag
        else
            render json: {error; 'AW SNAP SOMETHINGGS WRONG'}
    end

    def show
        tag = Tag.find(params[:id])
        render json: tag
    end

    def destroy
        tag = Tag.find(params[:id])
        tag.destroy
    end

    private

    def tag_params
        params.require(:tag).permit(:name, :meme_id)
    end
    

end
