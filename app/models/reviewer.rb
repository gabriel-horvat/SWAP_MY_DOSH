class Reviewer < ApplicationRecord
  has_one :review, has_one :user, foreign_key: 'user_id'
end
