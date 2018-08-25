class Request < ApplicationRecord
  # include PgSearch
  belongs_to :user
  has_many :offers, dependent: :destroy
  # pg_search_scope :search_by_location_and_wanted_currency,
  #   against: [ :location, :wanted_currency ]
    # using: {
    #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
    # }
end
