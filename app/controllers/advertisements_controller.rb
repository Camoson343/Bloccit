class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = Advertisement.find(params[:id])
  end

  def new
    @advertisemnt = Advertisment.new
  end

  def create
    @Advertisement = Advertisment.new
    @Advetisement.title = params[:title]
    @Advertisment.copy = params[:copy]
  end
end
