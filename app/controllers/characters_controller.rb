class CharactersController < ApplicationController
  def index
  	@all_charas = Characters.order(:name)
  end

  def show
  	@character = Characters.find(params[:id])
  end
end
