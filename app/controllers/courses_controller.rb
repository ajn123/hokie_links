class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def edit
    @course = Course.find(params[:id])
    @link = Link.new()
    @post = Post.new()
  end

  private

end
