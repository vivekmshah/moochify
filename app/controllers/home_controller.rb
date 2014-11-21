class HomeController < ApplicationController

  def show
  end

  def create
  	redirect_to results_path
  end

end