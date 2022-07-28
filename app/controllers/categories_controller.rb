class CategoriesController < ApplicationController
  def index
  end

  private

  def year_month_params
    @year = params[:year_id].to_i
    @month = params[:month_id].to_i
    if @year < 2000 || @month < 1 || @month > 12
      redirect_to year_month_categories_path(Date.today.year, Date.today.month)
    end
  end
end
