class ApplicationController < ActionController::Base
  protected

  def authenticate_user!
    redirect_to new_session_path unless signed_in?
  end

  def current_email
    session[:current_email]
  end

  def sign_in_as(email)
    session[:current_email] = email
  end

  private

  def signed_in?
    current_email.present?
  end
end
