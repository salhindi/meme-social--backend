class Api::V1::ImagesController < ApplicationController
    def index
        images = Image.all
        render json: images
    end

    def create
        image = Image.new(image_params)
        if image.save
            render json: image
        else
            render json: {error; 'AW SNAP SOMETHINGGS WRONG'}
    end

    def show
        image = Image.find(params[:id])
        render json: image
    end

    def destroy
        image = Image.find(params[:id])
        image.destroy
    end

    private

    

    def image_params
        params.require(:image).permit(:title, :top_text, :bottom_text, :image_id)
    end
    
end
