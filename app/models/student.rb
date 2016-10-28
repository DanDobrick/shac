class Student < ActiveRecord::Base
  belongs_to :user, class_name: 'User', foreign_key: :devise_id
  has_many :hosted_crashes, class_name: 'Crash', foreign_key: :host_id
  has_many :crashes, foreign_key: :crasher_id
  has_many :reviews_written, foreign_key: :reviewer_id
  has_many :reviews, foreign_key: :reviewee_id

  def full_name
    first_name + ' ' + last_name
  end

  def unreviewed_crashes
    crashes = self.hosted_crashes.map do |crash|
      crash if crash.reviews.length == 0
    end
    crashes.compact
  end

  def average_crasher_rating
    reviews = all_crasher_reviews
    total_score = reviews.inject (0) {|sum, review| sum + review.rating}
    (total_score / reviews.count).round(2)
  end

  def average_host_rating
    reviews = all_host_reviews
    total_score = reviews.inject (0) {|sum, review| sum + review.rating}
    (total_score / reviews.count).round(2)
  end

  private
  
  def all_crasher_reviews
    reviews.select do |review| 
      review.crash.crasher_id == self.id
    end
  end

  def all_host_reviews
    reviews.select do |review| 
      review.crash.host_id == self.id
    end
  end

end
