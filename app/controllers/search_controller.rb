class SearchController < ApplicationController
  def results
  	@results = Figure.where('name LIKE ? AND figure_type = ?', "%#{params[:q]}%", "#{params[:c]}")
  end
end
