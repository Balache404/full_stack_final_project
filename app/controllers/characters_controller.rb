class CharactersController < ApplicationController
  def index
  	@all_charas = Character.order(:name)
  end

  def show
  	@character = Character.find(params[:id])
  end
end
