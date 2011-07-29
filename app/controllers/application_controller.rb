class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :authenticate_team!
  before_filter :authorize
  helper :all
  helper_method :is_admin?,:is_authorize?

  def is_admin?
    current_team.admin
  end

  def logged_in_as_admin
    if !current_team.admin
      redirect_to root_url,:notice=>"You are not authorize"
    end
  end

  def is_authorize?

    !current_team.blank? && current_team.is_active

  end

  def authorize

    if !current_team.blank?
      if !current_team.is_active
  #     redirect_to destroy_team_session_path
   redirect_to root_url,:notice=>"You are not authorize"
      end  
    end  
  end
end
