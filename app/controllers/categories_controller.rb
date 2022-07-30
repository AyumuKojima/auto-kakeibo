class CategoriesController < ApplicationController
  before_action :year_month_params
  def index
  end

  def show
  end

  private

  def year_month_params
    @year = params[:year_id].to_i
    @month = params[:month_id].to_i
    if @year < 2000 || @month < 1 || @month > 12
      if request.path == "/years/#{@year}/months/#{@month}/categories"
        redirect_to year_month_categories_path(Date.today.year, Date.today.month)
      elsif request.path == "/years/#{@year}/months/#{@month}/categories/#{params[:id]}"
        redirect_to year_month_category_path(Date.today.year, Date.today.month)
      end
    end
  end
end
