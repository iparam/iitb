class SettingsController < ApplicationController
  def index
    @years = Year.all
    @factors = Factor.all
    @risks = Risk.all
  end

  def add_year
    @year = Year.create!(:year_no=>params[:year_no])
    redirect_to settings_path
  end

  def add_factor
    @factor = Factor.create!(:name=>params[:name])
    redirect_to settings_path
  end

  def add_risk
    @risk = Risk.create!(:factor_id=>params[:factor],:year_id=>params[:year],:risk_value=>params[:risk_value]) 
    redirect_to settings_path
  end
end
