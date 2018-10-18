class BandsController < ApplicationController

  def index
    render :index
  end

  private

  def band_params
    params.require(:band).permit(:name, :image)
  end
end
