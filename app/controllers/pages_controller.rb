class PagesController < ApplicationController
  def about
  	@about_page = Page.find_by(name: 'About')
  end

  def contact
  	@contact_page = Page.find_by(name: 'Contact')
  end
end
