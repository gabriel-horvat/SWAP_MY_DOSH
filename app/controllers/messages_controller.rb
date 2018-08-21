class MessagesController < ApplicationController
    before_action 

    def index
    @messages = Messages.all

    # @messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)

    # @message = @messages.new
    end

    # def create
    # @message = @messages.new(message_params)
    # @message.user = current_user

    # if @message.save
    #     redirect_to conversation_messages_path(@conversation)
    #     end
    # end

    private

    def message_params
        params.require(:message).permit(:content, :user_id)
    end

end