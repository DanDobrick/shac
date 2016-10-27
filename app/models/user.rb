class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :student_email_address
  has_one :student, foreign_key: :devise_id

  private

  def student_email_address
    unless self.email.include?('.edu')
      errors.add(:email, 'is not a valid email')
    end
  end

end
