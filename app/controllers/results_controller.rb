class ResultsController < ApplicationController

  def index
	  # if params[:search]
	  #   @results = Result.search(params[:search]).order("created_at DESC")
	  # else
	  #   @results = Result.all.order('created_at DESC')
	  # end
    @results = Result.all
  end

  def create
  	redirect_to results_path
  end
  
  def show
  end

  def search
  	@results = Result.search params[:search]
  end

end
