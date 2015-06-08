class BeersController < ApplicationController
  before_action :authorized?, except: [:index, :show]

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id]) 
  #  @response = HTTParty.get "http://api.brewerydb.com/v2/search?q=Sculpin&type=beer&key=3fa253bbc1552ae76cdad8987cd4386b" 
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

