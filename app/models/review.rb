class Review < ActiveRecord::Base
  belongs_to :crash
  belongs_to :student
end
