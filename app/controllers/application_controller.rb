class ApplicationController < ActionController::Base
  protected

  def authenticate_user!
    redirect_to new_session_path unless signed_in?
  end

  private

  def signed_in?
    session[:current_email].present?
  end
end
