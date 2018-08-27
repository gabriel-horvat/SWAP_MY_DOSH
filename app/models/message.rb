class Message < ApplicationRecord
  belongs_to :offer
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  validates_presence_of :content, :sender_id, :receiver_id


  scope :between, -> (sender_id,receiver_id) do
    where("(message.sender_id = ? AND message.receiver_id = ?) OR (message.receiver_id = ? AND message.sender_id = ?)", sender_id, receiver_id, sender_id, receiver_id)
  end

  def recipient(current_user)
    self.sender_id == current_user.id ? self.receiver : self.sender
  end







  private

    def message_time
      created_at.strftime("%d/%m/%y at %l:%M %p")
    end

end

