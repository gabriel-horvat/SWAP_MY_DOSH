class Offer < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :request

  validates :status, inclusion: { in: ["pending","confirmed", "declined"] }
end






