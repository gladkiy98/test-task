class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    phone_numbers_path
  end
end
