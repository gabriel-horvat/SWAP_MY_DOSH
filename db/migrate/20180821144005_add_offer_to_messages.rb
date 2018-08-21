class AddOfferToMessages < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :offer, foreign_key: true
  end
end
