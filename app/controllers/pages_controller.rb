class PagesController < ApplicationController
  def index
  	@categories = Category.all
    @entries = Entry.all
  end
end
