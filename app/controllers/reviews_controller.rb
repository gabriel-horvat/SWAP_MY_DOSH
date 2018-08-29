class ReviewsController < ApplicationController

  def index
    @request = Request.find(params[:request_id])
    @reviews = Review.all.where(params[:request_id] == @request.id )
  end

  def show
  end

  def new
    @request = Request.find(params[:request_id])
    @offers = Offer.all.where("request_id = ?", @request.id )
    @offers.each do |offer|
      if offer.request.user == current_user || offer.user == current_user
        @offer = offer
      end
    end
    @offer.update(:status => "completed")
    @offer.save!
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @request = Request.find(params[:request_id])
    @review.request = @request
    if @review.save!
      redirect_to completed_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to root_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to root_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :request_id)
  end


end
