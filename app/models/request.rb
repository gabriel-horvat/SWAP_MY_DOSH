class Request < ApplicationRecord
  include PgSearch

    pg_search_scope :search_by_location_and_start_date_and_end_date,
    against: [ :location, :start_date, :end_date ]

    pg_search_scope :global_search,
        against: [ :location, :start_date, :end_date ],
        associated_against: {

        }

  belongs_to :user
end
