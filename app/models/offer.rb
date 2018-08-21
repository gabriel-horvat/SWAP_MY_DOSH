class Offer < ApplicationRecord
  has_many :messages
  belongs_to :user
  belongs_to :request
end
