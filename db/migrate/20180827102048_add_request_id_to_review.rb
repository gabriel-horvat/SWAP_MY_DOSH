class AddRequestIdToReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :reviewer_id, :bigint
    remove_column :reviews, :reviewee_id, :bigint
    add_column :reviews, :request_id, :bigint
    add_column :reviews, :user_id, :bigint

  end
end
