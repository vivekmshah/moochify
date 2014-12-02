class HomeController < ApplicationController

  skip_before_filter :authorize

  def show
  end

  # The method below directs the user to the results page
  # when they click on the 'Search' button

  def create
  	redirect_to results_path
  end

end