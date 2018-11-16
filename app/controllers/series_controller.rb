class SeriesController < ApplicationController
  def index
  	@all_series = Series.order(:name)
  end

  def show
  	@series = Series.find(params[:id])
  end
end
