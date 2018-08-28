class OffersController < ApplicationController

  def index
    @user = User.find_by_id(params[:id])
    @offers_confirmed = Offer.all.where("status = 'confirmed'")
  end

  def show
    @offer = Offer.includes(messages: :sender).find(params[:id])
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
      redirect_to request_offer_path(@request, @offer), notice: "Have a chat on the conditions of your swap!"
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
    @offer.update(:status => "sent")
    if @offer.request.user == current_user
      current_user.update(:status => "sender")
      @offer.user.update(:status => "receiver")
    elsif @offer.user == current_user
      current_user.update(:status => "sender")
      @offer.request.user.update(:status => "receiver")
    end
    @offer.save
    redirect_to request_offer_path(@offer.request.id, @offer)
  end

  def actual_confirmation
    @offer = Offer.find(params[:offer_id])
    @offer.update(:status => "confirmed")
    if @offer.save
      redirect_to offers_path
    end
  end

  def keep_chatting
    @offer = Offer.find(params[:offer_id])
    @offer.update(:status => "continue")
    @offer.save
    redirect_to request_offer_path(@offer.request.id, @offer)
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
    @offers.map do |offer|
      if offer.user_id == current_user.id || offer.request.user.id == current_user.id
        @relevant_offers << offer
      end
    end
  end




  private

  def offer_params
    params.permit( :request_id, :user_id, :status)
  end

end
