class ResultsController < ApplicationController

  def index
    @results = Equipment.where('name LIKE ?', "%#{params[:name]}%")
    # raise @results.inspect
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