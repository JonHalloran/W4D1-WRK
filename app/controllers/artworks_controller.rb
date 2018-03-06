class ArtworksController < ApplicationController
  def index
    id = params[:user_id]
    p id
    # ar1 = Artwork.where("artist_id = #{id}")
    render json: Artwork.distinct.joins(:artwork_shares).where("viewer_id = #{id} OR artist_id = #{id}")
  end

  def show
    render json: Artwork.find(params[:id])
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
    if artwork
      artwork.update(params_permit)
    else
      render json: ["Maybe try creating it first"], status: 418
    end
  end


  def destroy
    render json: Artwork.destroy(params[:id])
  end

  private

  def params_permit
    params.require(:artwork).permit(:title, :artist_id, :image_url)
  end
end
