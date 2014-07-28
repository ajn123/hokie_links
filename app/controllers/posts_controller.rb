class PostsController < ApplicationController
  def create
    post = Post.new(post_params)
    if post.save
      flash[:success] = "Thanks for contributing"
    else
      flash[:danger] = post.errors.messages
    end
    redirect_to :back
  end

  private

  def post_params
    params.require(:post).permit(:course_id, :title, :description)
  end

end
