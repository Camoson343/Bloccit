class AdvertisementsController < ApplicationController
  def index
    @advertisements = Advertisement.all
  end

  def show
    @advertisement = advertisement.find(params[:id])
  end

  def new
  end

  def create
  end
end
