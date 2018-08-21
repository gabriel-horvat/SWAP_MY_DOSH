class Message < ApplicationRecord
  belongs_to :offer
  belongs_to :sender, class_name: 'User', foreign_key: 'sender_id'
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'

  validates_presence_of :body, :user_id

  private

    def message_time
      created_at.strftime("%d/%m/%y at %l:%M %p")
    end

end
