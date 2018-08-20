class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :request_currency
      t.string :wanted_currency
      t.integer :request_amount
      t.integer :wanted_amount
      t.string :location
      t.date :start_date
      t.date :end_date
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
