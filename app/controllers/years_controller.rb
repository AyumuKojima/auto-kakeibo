class YearsController < ApplicationController
  def index
    redirect_to year_month_spends_path(2022, 7)
  end
end
