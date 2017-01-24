class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include DeviseTokenAuth::Concerns::User
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_validation :set_provider
  before_validation :set_uid
  validate :student_email_address
  has_one :student, foreign_key: :devise_id

  private

  def set_provider
    self[:provider] = "email" if self[:provider].blank?
  end

  def set_uid
    self[:uid] = self[:email] if self[:uid].blank? && self[:email].present?
  end

  def student_email_address
    unless self.email.include?('.edu')
      errors.add(:email, 'is not a valid email')
    end
  end
end
