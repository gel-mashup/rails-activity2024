class CommentsController < ApplicationController
  before_action :comment_params

  def create
    new_comment = Comment.new(comment_params)
    if new_comment.save
      redirect_to post_path(new_comment.post)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:message, :author, :post_id)
    end
end
