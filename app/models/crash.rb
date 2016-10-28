class Crash < ActiveRecord::Base
  belongs_to :host, class_name: 'Student', foreign_key: :host_id
  belongs_to :crasher, class_name: 'Student', foreign_key: :crasher_id
end
