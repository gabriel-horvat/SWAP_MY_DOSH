class Offer < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :request

  validates :status, inclusion: { in: ["pending","confirmed", "declined", "sent", "continue", "completed"] }


  def unread_message_count(current_user)
    self.messages.where("sender_id != ? AND read = ?", current_user, false).count
  end
end






