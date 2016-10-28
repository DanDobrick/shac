class AddRevieweeIdColumnToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :reviewee_id, :integer
  end
end
