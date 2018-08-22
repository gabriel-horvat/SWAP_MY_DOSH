class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @user = User.all.sample
    @request = Request.all.sample
    @requests = Request.all
  end
end
