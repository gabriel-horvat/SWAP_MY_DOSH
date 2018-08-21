class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def show
    set_request
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
     @request.user = current_user
    if @request.save
      redirect_to requests_path(@request), notice: "Your request is now visible to other doshers!"
      redirect_to requests_path, notice: "Your request is now visible to other doshers!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:request_currency, :wanted_currency, :location, :start_date, :end_date, :request_amount, :user_id)
  end
end
