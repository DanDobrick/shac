class RenameReviewIdToReviewerIdOnReviews < ActiveRecord::Migration
  def change
    rename_column :reviews, :review_id, :reviewer_id
  end
end
