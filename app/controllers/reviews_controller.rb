class ReviewsController < ApplicationController

  def index
    @request = Request.find(params[:request_id])
    @reviews = Review.all.where(params[:request_id] == @request.id )
  end

  def show
  end

  def new
    @request = Request.find(params[:request_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @request = Request.find(params[:request_id])
    @review.request = @request
    if @review.save!
      redirect_to root_path, notice: "Thanks for the review and see you soon!"
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
