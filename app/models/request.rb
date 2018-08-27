class Request < ApplicationRecord
  belongs_to :user
  has_many :offers, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
