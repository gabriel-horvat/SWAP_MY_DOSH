class RequestsController < ApplicationController
  # before_action :set_request

  def index
    # @requests = apply_filters(Request.all.order("created_at DESC"))
    #@user = User.all.sample
    if params[:request]
      @requests = Request.search_by_requests(params[:request][:location]).all.order("created_at DESC")
      @requests = Request.search_by_requests(params[:request][:request_currency]).all.order("created_at DESC")
    elsif params[:location].present?
      @requests = Request.search_by_requests(params[:location]).all.order("created_at DESC")
      #@requests = apply_filters(Request.all.order("created_at DESC"))
    elsif params[:start_date].present?
      start_date = params[:start_date].split(" ").first
      @requests = Request.search_by_requests(start_date).all.order("created_at DESC")
    else
      @requests = Request.all.order("created_at DESC")
    end
   
    
  end
  
  def show
    set_request
  end
  
  def new
    @request = Request.new
  end
  
  def create
    end_date = params[:request][:end_date].to_date.strftime("%Y-%m-%d")
    @request = Request.new(request_params)
    @request.end_date = end_date
    @request.user = current_user
    if @request.save
      redirect_to requests_path(request: request_params), notice: "Your request is now visible to other doshers!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to personal_path, notice: "Your request has been deleted"
  end

  def personal
    @requests = Request.where("user_id = ?", current_user.id)
  end


  private

  def apply_filters(scope)
    starts = params[:request][:start_date].split(" ").first if params[:request][:start_date]
    ends = params[:request][:end_date]

    if starts.present? && ends.present?
       scope = scope.where('start_date BETWEEN ? AND ?', starts, ends)
    end
    scope = scope.where("location ILIKE ?", "%#{params[:request][:location]}%") if params[:request][:location].present?
    #scope = scope.where("wanted_currency ILIKE ?", "%#{params[:request][:wanted_currency]}%") if params[:request][:wanted_currency].present?
    scope
  end

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:wanted_currency, :location, :request_currency, :start_date, :end_date, :request_amount, :user_id)
    #params.permit(:wanted_currency, :location, :request_currency, :start_date, :end_date, :request_amount, :user_id)

    # {wanted_currency: "EUR"}
    # {request: { wanted_currency: "EUR" }}
  end
end
