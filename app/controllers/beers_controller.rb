class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path
    else
      render :new
    end
  end

  def destroy
      @beer = Beer.find(params[:id])
      @beer.destroy
      redirect_to beers_path
  end

private
  def beer_params
    params.require(:beer).permit(:name, :brewery, :image_url, user_ids: [])
  end
end

