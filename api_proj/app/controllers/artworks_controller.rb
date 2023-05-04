class ArtworksController < ApplicationController
    def index
        debugger
        @artworks = Artwork.where(user_id: params[:user_id])
        render json: @artworks
    end

    def create
        # @artwork = Artwork.Create!(require(:artwork).permit(:title, :image_url, :artist_id))
        @artwork = Artwork.create!(artwork_params)
        
        if @artwork.save
            render json: @artwork
        else
            render json: artwork.errors.full_messages, status: 422
        end

            
    end

    def show
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end

    def update
        @artwork = Artwork.find(params[:id])
        @artwork.update!(artwork_params)

        render json: @artwork
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy

        render json: @artwork
    end

    private

    def artwork_params
        params.require(:artwork).permit(:title, :image_url, :artist_id)
    end
end