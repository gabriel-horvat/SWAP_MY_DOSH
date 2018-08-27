class Message < ApplicationRecord
  belongs_to :offer
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'


  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def from?(some_user)
    sender == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("offer_#{offer.id}", {
          message_partial: ApplicationController.renderer.render(
            partial: "messages/message",
            locals: { message: self, user_is_messages_author: false }
          ),
          current_user_id: sender.id,
        });
  end




  private

    def message_time
      created_at.strftime("%d/%m/%y at %l:%M %p")
    end

end

