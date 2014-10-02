class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end


  def edit
    @course_found = Course.find(params[:id])
    @link = Link.new()
    @post = Post.new()
  end

  def show
    redirect_to :edit
  end

  private

end
