class CommentsController < ApplicationController
before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
     params.permit!
     @entry = Entry.find(params[:entry_id])
     @comment = @entry.comments.create(params[:comment])
     redirect_to entry_path(@entry)
  end

  def update
    @comment.update(comment)
    respond_with(@comment)
  end

  def destroy
    @comment.destroy
    @entry = Entry.find(params[:entry_id])
    redirect_to entry_path(@entry)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:author,:body)
    end
end

