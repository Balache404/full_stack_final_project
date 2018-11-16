class FiguresController < ApplicationController
  def index
  	@all_figures = Figure.order(:name).page(params[:page]).per(5)
  end

  def show
  	@figure = Figure.find(params[:id])
  end
end
