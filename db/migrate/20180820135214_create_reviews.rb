class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.references :reviewer, index: true, foreign_key: {to_table: :users}
      t.references :reviewee, index: true, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
