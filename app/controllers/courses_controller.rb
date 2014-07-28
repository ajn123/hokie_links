class CoursesController < ApplicationController
  def show
    @courses = Course.all
  end

  def edit
    @course = Course.find(params[:id])
    @link = Link.new()
    @post = Post.new()
  end

  def create
    link = Link.new(link_params)
    if link.save
      flash[:success] = "Thanks for contributing!"
    else
      flash[:danger] = link.errors.messages
    end
    redirect_to :back # Go back to page regardless
  end

  def create_post
    post = Post.new(post_params)
    if post.save
      flash[:success] = "Thanks for contributing"
    else
      flash[:danger] = "Incorrect comment"
    end
    redirect_to :back
  end

  private

  def link_params
    params.require(:link).permit(:course_id, :url, :description, :name)
  end

  def post_params
    params.require(:post).permit(:course_id, :title, :description)
  end



end
