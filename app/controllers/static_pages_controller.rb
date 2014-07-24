class StaticPagesController < ApplicationController
  def index
    @chart = Hash.new
    Course.all.each { |course| @chart[course.name] = course.gpa  }
  end

  def about
  end

  def contact
  end

  def updates
  end
end
