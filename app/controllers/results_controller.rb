class ResultsController < ApplicationController

  skip_before_filter :authorize

  def index

    @zip = params[:zip]

    @results = Equipment.all
    @results = @results.where("name LIKE ?", "%#{params[:name]}%") if !params[:name].blank?
    @results = @results.joins(:user)
    @results = @results.where(:users => {:zip => params[:zip]}) if !params[:zip].blank?

    # @results = @results.where(zip: params[:zip]) if !params[:zip].blank?

    # @locations = User.find_by_sql([
    #   'SELECT users.id, users.longitude, users.latitude ' +
    #   'FROM users ' +
    #   'INNER JOIN equipment ' +
    #   'ON users.id = equipment.user_id ' +
    #   # 'WHERE users.zip = ? ' +
    #   # 'AND equipment.name LIKE ?',
    #   'WHERE equipment.name LIKE ?',
    #   # "#{params[:zip]}",
    #   "%#{params[:name]}%"
    # ])

    @locations = User.all
    @locations = @locations.where(zip: params[:zip]) if !params[:zip].blank?
    @locations = @locations.joins(:equipment) if !params[:name].blank?
    @locations = @locations.where("equipment.name LIKE ?", "%#{params[:name]}%") if !params[:name].blank?

  end

  def create
  	redirect_to results_path
  end
  
  def show
  end

end

# Post.joins(:group => :memberships).where(:memberships => {:user_id => 1})
# SELECT "posts".* FROM "posts" INNER JOIN "groups" ON "groups"."id" = "posts"."group_id" INNER JOIN "memberships" ON "memberships"."group_id" = "groups"."id" WHERE ("memberships"."user_id" = 1)

# Speaker.all(:conditions => ["name like ?", "%yson%"])

    # @locations = @locations.where("equipment.name LIKE ?", "%#{params[:name]}%")
