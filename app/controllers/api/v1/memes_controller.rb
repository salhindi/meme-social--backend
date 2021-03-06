class Api::V1::MemesController < ApplicationController
    def index
        memes = Meme.all
        render json: memes
    end

    def create
        meme = Meme.new(meme_params)
        if meme.save
            render json: meme
        else
            render json: {error: 'AW SNAP SOMETHINGGS WRONG'}
        end
    end

    def show
        meme = Meme.find(params[:id])
        render json: meme
    end

    def destroy
        meme = Meme.find(params[:id])
        meme.destroy
    end

    def search
        @memes = Meme.where("meme LIKE ?", "%" + params[:q] + "%")
        render json: @memes
    end


    private

    def meme_params
        params.require(:meme).permit(:title, :top_text, :bottom_text, :featured_image)
    end
end
