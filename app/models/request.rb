class Request < ApplicationRecord
  include PgSearch
  belongs_to :user
  has_many :offers, dependent: :destroy
  pg_search_scope :search_by_requests,
    against: [ :location, :wanted_currency, :start_date, :request_currency ],
    using: {
      tsearch: { prefix: true }
    }
end
