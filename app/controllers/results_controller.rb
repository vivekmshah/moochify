class ResultsController < ApplicationController

  skip_before_filter :authorize

  def index
    @results = Equipment.where('name LIKE ?', "%#{params[:name]}%")
    @zip = params[:zip]

    @locations = User.find_by_sql([
      'SELECT users.id, users.longitude, users.latitude ' +
      'FROM users ' +
      'INNER JOIN equipment ' +
      'ON users.id = equipment.user_id ' +
      # 'WHERE users.zip = ? ' +
      # 'AND equipment.name LIKE ?',
      'WHERE equipment.name LIKE ?',
      # "#{@zip}",
      "%#{params[:name]}%"
    ])
  
    # e = Equipment.all
    # e = e.where("name LIKE ?","%#{params[:name]}%") if !params[:name].blank?
    # e = e.where(zip: @zip) if !params[:zip].blank?

  end

  def create
  	redirect_to results_path
  end
  
  def show
  end

end


