class PagesController < ApplicationController
  def about
  	@about_page = Pages.find_by(name: 'About')
  end

  def contact
  	@contact_page = Pages.find_by(name: 'Contact')
  end
end
