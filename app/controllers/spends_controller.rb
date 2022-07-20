class SpendsController < ApplicationController
  before_action :year_month_params

  def index
  end

  private

  def year_month_params
    @year = params[:year_id].to_i
    @month = params[:month_id].to_i
    if @year < 2000 || @month < 1 || @month > 12
      redirect_to years_path
    end
  end
end
