class ArtworkSharesController < ApplicationController

  def create
    art_shar = ArtworkShare.new(params_permit)
    if art_shar.save
      render json: art_shar
    else
      render json: art_shar.errors.full_messages, status: 418
    end
  end

  def destroy
    art_shar = ArtworkShare.find(params[:id])
    if art_shar
      art_shar.destroy
      render json: art_shar
    else
      render json: ["This was never shared to begin with"], status: 404
    end
  end
  
  private

  def params_permit
    params.require(:user).permit(:artwork_id, :viewer_id)
  end


end
