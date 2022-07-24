class SpendsController < ApplicationController
  before_action :year_month_params
  before_action :get_calendar_info, only: :index

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

  def get_calendar_info
    first_date = Date.new(@year, @month, 1)
    @this_month_wday = first_date.wday
    @date_num_of_last_month = (first_date - 1).day
    @date_num_of_this_month = first_date.end_of_month.day
  end
end
