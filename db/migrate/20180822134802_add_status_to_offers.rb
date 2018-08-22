class AddStatusToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :status, :string, default: "pending"
  end
end
