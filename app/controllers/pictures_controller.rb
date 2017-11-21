class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    render text: "Recieved POST request to '/pictures' with the data URL: #{params} "
  end

end
