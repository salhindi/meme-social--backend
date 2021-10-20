class Api::V1::ImagesController < ApplicationController
    def index
        images = Image.all
        render json: ImageSerializer.new(images).serialized_json
    end

    def create
        image = Image.new(image_params)
        if image.save
            render json: image
        else
            render json: {error: 'AW SNAP SOMETHINGGS WRONG'}
        end
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
        params.require(:image).permit(:image_file_name, :image_content_type, :image_file_size, :meme_id)
    end
    
end
