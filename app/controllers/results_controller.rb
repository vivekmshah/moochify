class ResultsController < ApplicationController

  skip_before_filter :authorize

  def index

    @zip = params[:zip]

    @results = Equipment.all
    @results = @results.where("lower(name) LIKE ?", "%#{params[:name].downcase}%") if !params[:name].blank?
    @results = @results.joins(:user)
    @results = @results.where(:users => {:zip => params[:zip]}) if !params[:zip].blank?

    @locations = User.all
    @locations = @locations.select(:longitude, :latitude)
    @locations = @locations.where(zip: params[:zip]) if !params[:zip].blank?
    @locations = @locations.joins(:equipment) if !params[:name].blank?
    @locations = @locations.where("lower(equipment.name) LIKE ?", "%#{params[:name].downcase}%") if !params[:name].blank?

  end

  def create
  	redirect_to results_path
  end
  
  def show
  end

end