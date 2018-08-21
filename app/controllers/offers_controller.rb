class OffersController < ApplicationController

  def index
    @offers = Offers.all
  end

  def create
    @offer = Offer.new(offer_params)
     @offer.user = current_user
    if @offer.save
      redirect_to offer_path, notice: "Have a chat on the conditions of your swap!"
    else
      redirect_to requests_path
    end
  end

  def show
  end


end
