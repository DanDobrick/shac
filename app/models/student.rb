class Student < ActiveRecord::Base
  belongs_to :user, class_name: 'User', foreign_key: :devise_id
end
