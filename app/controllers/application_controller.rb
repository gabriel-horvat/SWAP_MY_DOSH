class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_action :set_message_count

    def set_message_count
      @messages = Message.where(receiver_id: current_user.id)
      if !@messages.nil?
        @messages_unread = @messages.select { |message| message.read == false }
        @messages_unique = @messages_unread.uniq {|message| message.sender_id}
      end
    end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo, :name, :description, :rating, :email, :password, :password_confirmation])
  end
end

