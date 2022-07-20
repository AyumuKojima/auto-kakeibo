class YearsController < ApplicationController
  def index
    time = Time.now
    redirect_to year_month_spends_path(time.year, time.month)
  end
end
