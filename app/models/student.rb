class Student < ActiveRecord::Base
  belongs_to :user, class_name: 'User', foreign_key: :devise_id
  has_many :hosted_crashes, class_name: 'Crash', foreign_key: :host_id
  has_many :crashes, foreign_key: :crasher_id

  def full_name
    first_name + ' ' + last_name
  end
end
