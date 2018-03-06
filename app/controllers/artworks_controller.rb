class ArtworksController < ApplicationController
  def index
    render json: Artwork.all
  end

  def show
    render json: Artwork.find(params[id])
  end

  def create
    artwork = Artwork.new(params_permit)
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 418
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    artwork.update(params_permit)
    render json: artwork
  end

  def destroy
    render json: Artwork.destroy(params[:id])
  end

  private

  def params_permit
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end
end
