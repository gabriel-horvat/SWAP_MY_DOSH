class RequestsController < ApplicationController

  def index
    @requests = apply_filters(Request.all.order("created_at DESC"))
    @user = User.all.sample

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
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to personal_path, notice: "Your request has been deleted"
  end

  def personal
    @requests = Request.where("user_id = ?", current_user.id)
  end


  private

  def apply_filters(scope)
    starts = params[:start_date].split(" ").first if params[:start_date]
    ends = params[:end_date]

    if starts.present? && ends.present?
       scope = scope.where('start_date BETWEEN ? AND ?', starts, ends)
    end
    scope = scope.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?
    scope
  end

  def set_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:request_currency, :wanted_currency, :location, :start_date, :end_date, :request_amount, :user_id)
  end
end
