class Api::V1::TagsController < ApplicationController
    before_action :set_meme
    def index
        tags = Tag.all
        render json: tags
    end

    def create
        tag = @meme.tags.new(tag_params)
        if tag.save
            render json: @meme
        else
            render json: {error: 'AW SNAP SOMETHINGGS WRONG'}
        end
    end

    def show
        tag = Tag.find(params[:id])
        render json: tag
    end

    def destroy
        @tag = Tag.find(params[:id])
        @meme = Meme.find(@tag.meme_id)
        @tag.destroy
        render json: @meme
    end

    private

    def set_meme
        @meme = Meme.find(params[:meme_id])
    end

    def tag_params
        params.require(:tag).permit(:name, :meme_id)
    end
    

end
