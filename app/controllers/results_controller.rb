class ResultsController < ApplicationController

	def index
	  if params[:search]
	    @results = Result.search(params[:search]).order("created_at DESC")
	  else
	    @results = Result.all.order('created_at DESC')
	  end
	end

  def create
  	redirect_to results_path
  end
  
  def show
  end

end
