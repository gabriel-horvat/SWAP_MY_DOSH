class OffersController < ApplicationController

  def index
    @offers = Offer.all.where(user_id == current_user)
  end


  def new
    @request = Request.find(params[:request_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @request = Request.find(params[:request_id])
    @offer.request = @request
    if @offer.save!
      redirect_to request_offer_messages_path(@request, @offer), notice: "Have a chat on the conditions of your swap!"
    else
      redirect_to requests_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def offer_params
    params.permit(:user_id, :request_id)
  end

end
