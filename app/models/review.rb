class Review < ApplicationRecord
  belongs_to :user
  belongs_to :request

  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: {in: [1,2,3,4,5]}
end
