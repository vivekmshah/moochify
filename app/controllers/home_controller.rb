class HomeController < ApplicationController

  skip_before_filter :authorize

  def show
  end

  def create
  	redirect_to results_path
  end

end