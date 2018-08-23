class OffersController < ApplicationController

  def index
    @offers = Offer.all.where("user_id = ? AND status = 'confirmed'", current_user.id)
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
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)
    redirect_to offers_path
  end

  def destroy
  end

  def confirm
    @offer = Offer.find(params[:offer_id])
    @offer.update(:status => "confirmed")
    @offer.save
    redirect_to offers_path
  end

  def decline
    @offer = Offer.find(params[:offer_id])
    @offer.update(:status => "declined")
    @offer.save
    redirect_to requests_path
  end

  def my_chats
    @relevant_offers = []
    @offers = Offer.all
    @offers.each do |offer|
      if offer.user_id == current_user.id || offer.request.user.id == current_user.id
        @relevant_offers << offer
      end
    end
  end

  private

  def offer_params
    params.permit(:user_id, :request_id, :status)
  end

end
