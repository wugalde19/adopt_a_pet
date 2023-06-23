class HomeController < ApplicationController
  def index
    render html: 'Main Page'
  end

  def about
    render html: 'About Page'
  end
end
