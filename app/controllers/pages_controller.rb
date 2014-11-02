class PagesController < ApplicationController
  def index
  	@categories = Category.all
    @entries = Entry.all.order("id DESC").paginate(:page => params[:page],:per_page => 5)
  end
end
