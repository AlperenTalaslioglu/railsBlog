class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def index
    @entries = Entry.all
    @categories = Category.all
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def edit
  end

  def feed
    @entries = Entry.all
    render :template => 'entries/feed.rss.builder', :layout => false
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    @entry.category = Category.find(params[:category_id])        

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @entry }
      else
        format.html { render :new }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @entry.user = current_user
    @entry.category = Category.find(params[:category_id])        
     respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @entry }
      else
        format.html { render :edit }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end


  end

  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to pages_index_path, notice: 'Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_entry
      @entry = Entry.find(params[:id])
    end

    def entry_params
      params.require(:entry).permit(:title, :tag, :content, :category_id, :user_id)
    end
end
