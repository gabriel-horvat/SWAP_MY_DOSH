class Request < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_requests,
    against: [ :location, :wanted_currency, :start_date, :request_currency ],
    using: {
      tsearch: { prefix: true }
    }
  belongs_to :user
  has_many :offers, dependent: :destroy
end
