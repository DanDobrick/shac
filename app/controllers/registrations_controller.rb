class RegistrationsController < Devise::RegistrationsController
  respond_to :json

  protected

  def after_sign_up_path_for(resource)
    :new_student
  end
end