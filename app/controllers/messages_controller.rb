class MessagesController < ApplicationController
    before_action :set_message_count
    before_action :set_offer

    def index

      @request = Request.find(params[:request_id])

      @messages = @offer.messages
      @messages.where("sender_id != ? AND read = ?", current_user.id, false).update_all(read: true)


      @message = @offer.messages.new

    end

    def create
      @request = Request.find(params[:request_id])
      @message = @offer.messages.new(message_params)
      @message.sender_id = current_user.id
      if @message.sender_id == @offer.user_id
        @message.receiver_id = @offer.request.user.id
      else
        @message.receiver_id = @offer.user_id
      end
      if @message.save!
        redirect_to request_offer_messages_path(@request, @offer)
      else
        redirect_to request_offer_messages_path(@request, @offer)
      end

      set_message_count
    end

    # def create
    # @message = @messages.new(message_params)
    # @message.user = current_user

    # if @message.save
    #     redirect_to conversation_messages_path(@conversation)
    #     end
    # end

    private

    def set_message_count
        @messages = Message.where(receiver_id: current_user)
        if !@messages.nil?
          @messages_unread = @messages.select { |message| message.read == false }
          @messages_unique = @messages_unread.uniq {|message| message.sender_id}
        end
     end

    def message_params
        params.permit(:sender_id, :receiver_id, :content)
        params.require(:message).permit(:content)
    end

    def set_offer
      @offer = Offer.find(params[:offer_id])
    end
end
