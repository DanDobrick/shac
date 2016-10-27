class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :crash_id
      t.integer :review_id
      t.string :review_text
      t.integer :rating

      t.timestamps null: false
    end
  end
end
