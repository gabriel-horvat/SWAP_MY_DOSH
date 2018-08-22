class RequestsController < ApplicationController

  def index
    @requests = apply_filters(Request.all)
    session[:start_date] = params[:start_date]
    session[:end_date] = params[:end_date]
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

  def apply_filters(scope)
    starts = params[:start_date]
    ends = params[:end_date]

    if starts.present? && ends.present?
       scope = scope.where('start_date BETWEEN ? AND ?', starts, ends)
       # SELECT * FROM Products
      # WHERE (Price BETWEEN 10 AND 20)
     # scope = scope.where("(requests.start_date, requests.end_date) OVERLAPS (?, ?)", starts, ends)
     # scope = Request.where.not(id: scope.pluck(:id))
    end

    scope = scope.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    #raise
    scope
  end

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:request_currency, :wanted_currency, :location, :start_date, :end_date, :request_amount, :user_id)
  end
end
