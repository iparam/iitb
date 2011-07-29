class WelcomeController < ApplicationController
  skip_before_filter :authenticate_team! ,:only=>[:index]
  skip_before_filter :authorize ,:only=>[:index]
  def index
    @projects = Project.all
  end

  def team
    @bids = current_team.bids
    @teams = Team.all if is_admin?
     @projects = current_team.bids.where(:winner=>true).collect{|b| b.project}
  end
end
