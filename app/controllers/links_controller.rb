class LinksController < ApplicationController

  def create
    link = Link.new(link_params)
    if link.save
      flash[:success] = "Thanks for contributing!"
    else
      flash[:danger] = link.errors.messages
    end
    redirect_to :back # Go back to page regardless
  end

  private

  def link_params
    params.require(:link).permit(:course_id, :url, :description, :name)
  end

end
