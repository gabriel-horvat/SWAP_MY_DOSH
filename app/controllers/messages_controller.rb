class MessagesController < ApplicationController

  before_action :set_offer, :set_request
  before_action :set_message_count
  before_action :set_offer

  def index

    @messages = @offer.messages

    @messages.where("sender_id != ? AND read = ?", current_user, false).update_all(read: true)

    @message = @offer.messages.new

  end

  def create
    @message = Message.new(message_params.merge(sender: current_user))
    @message.offer = @offer
    @message.sender = current_user

    if @offer.request.user == current_user
      @message.receiver_id = @offer.user_id
    elsif @offer.user == current_user
      @message.receiver_id = @offer.request.user_id
    end
        #todo: if statement - the other user
        if @message.save
          respond_to do |format|
            format.html { redirect_to request_offer_path(@offer.request, @offer) }
            format.js
          end
        else
          respond_to do |format|
            format.html { render "offers/show" }
            format.js
          end
        end
        set_message_count
      end



      private

      def set_message_count

        @messages = Message.where(receiver_id: current_user)


        if !@messages.nil?
          @messages_unread = @messages.select { |message| message.read == false }
          @messages_unique = @messages_unread.uniq {|message| message.sender_id}

        end
      end



      def message_params
        params.require(:message).permit(:content)
      end

      def set_offer
        @offer = Offer.find(params[:offer_id])
      end

      def set_request
        @request = Request.find(params[:request_id])
      end
    end
