class CommentsController < ApplicationController
  
  def create
    @post    = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      redirect_to post_path(@post), :notice => "Comment Successful!"
    else
      redirect_to post_path(@post), :alert => "You fail at commenting"
    end
  end
  
end