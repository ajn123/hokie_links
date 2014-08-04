class SearchesController < ApplicationController
  def index
    @results = search_results
  end

  private

  def search_results
    if params.has_key? :course
      Course.where("name like ?", "%#{params[:course][:name]}%")
    end
  end
end
