class RequestsController < ApplicationController

  def index
    if params[:new_request].present?
      @requests = Request.search_by_requests(params[:new_request][:location]).where(request_currency: params[:new_request][:wanted_currency]).order('created_at DESC') #.where(wanted_currency: params[:new_request][:requested_currency])
    elsif params[:location].present? && params[:start_date].present?
      set_request(params[:location]) 
      @requests = dates_filter(@requests).order('created_at DESC')
    elsif params[:location].present?
      set_request(params[:location]) .order('created_at DESC')
    # elsif params[:date_start].present?
    #   set_request(params[:date_start])
    # elsif params[:location].present?
    #   set_request(params[:location]) 
    else
      @requests = Request.all.order('created_at DESC')
    end
  end
  
  def show
    set_request
  end
  
  def new
    @request = Request.new
  end
  
  def create
    @request = Request.new(request_params)
    if params[:request][:end_date] != ""
      end_date = params[:request][:end_date].to_date.strftime("%Y-%m-%d")
      @request.end_date = end_date
    end
    @request.user = current_user
    if @request.save
      redirect_to requests_path( new_request: request_params), notice: "Your request is now visible to other doshers!"
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

  def dates_filter(scope)
    starts = params[:start_date].split(" ").first if params[:end_date]
    ends = params[:end_date]

    if starts.present? && ends.present?
       scope = scope.where('start_date BETWEEN ? AND ?', starts, ends)
    end
    scope
  end
  # def apply_filters(scope)
  #   starts = params[:date_start]
  #   ends = params[:date_end] 
  #   if starts.present? && ends.present?
  #     scope = scope.where("(requests.start_date, requests.end_date) OVERLAPS (?, ?)", starts, ends)
  #   end
  #   scope = scope.where(request_currency: params[:wanted_currency]) if params[:wanted_currency].present?
  #   scope = scope.where("location ILIKE ?", "%#{params[:location]}%") if params[:location].present?

  #   scope
  # end
    # starts = params[:request][:start_date].split(" ").first if params[:request][:start_date]
    # ends = params[:request][:end_date]

    # if starts.present? && ends.present?
    #    scope = scope.where('start_date BETWEEN ? AND ?', starts, ends)
    # end
    # scope = scope.where("location ILIKE ?", "%#{params[:request][:location]}%") if params[:request][:location].present?
    # #scope = scope.where("wanted_currency ILIKE ?", "%#{params[:request][:wanted_currency]}%") if params[:request][:wanted_currency].present?
    # scope

  def set_request(search_term)
    @requests = Request.search_by_requests(search_term)
  end
  
  def request_params
    params.require(:request).permit(:wanted_currency, :location, :request_currency, :start_date, :end_date, :request_amount, :user_id)
  end
end
