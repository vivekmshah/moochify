class EquipmentController < ApplicationController

  before_filter :equipment_edits, only: [:edit, :update]

  def new
    @equipment = Equipment.new
  end

  def create

    # MISSING USER_ID WHEN USING API ENDPOINT -> 
    equipment = current_user.equipment.new(equipment_params)

    respond_to do |format|
      if equipment.save
        format.html { redirect_to equipment_index_path, notice: 'Equipment was successfully created.' }
        format.json { render json: equipment, status: :created }
      else
        format.html {render :new }
        format.json { render json: equipment.errors, status: :unprocessable_entity }
      end
    end

  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
    equipment = Equipment.find(params[:id])
    respond_to do |format|
      if equipment.update_attributes(equipment_params)
        format.html { redirect_to equipment, notice: 'Equipment was successfully updated.' }
        format.json { render json: equipment, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @equipment = Equipment.where(user_id: current_user)
    
    respond_to do |format|
      format.html {  }
      format.json { render json: @equipment, status: :ok }
    end

  end


  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    equipment = Equipment.find(params[:id])
    equipment.destroy
    respond_to do |format|
      format.html { redirect_to equipment_index_path, notice: 'Equipment was successfully destroyed.' }
      format.json { head :no_content }
    end

  end

  def show
    @equipment = Equipment.find(params[:id])
    @reviews = Review.find_by_sql([
      'SELECT reviews.title, reviews.comment ' +
      'FROM reviews ' +
      'INNER JOIN orders ' +
      'ON reviews.order_id = orders.id ' +
      'INNER JOIN equipment ' +
      'ON orders.equipment_id = equipment.id ' +
      'WHERE equipment.id = ?',
      "#{params[:id]}"
      ])
    @myLat = User.find(@equipment.user_id).latitude
    @myLng = User.find(@equipment.user_id).longitude
    @owner = User.find(@equipment.user_id)
  end

private

  def equipment_params
    params.require(:equipment).permit(:name, :current_daily_cost, :description, :availability, :avatar)
  end

  def equipment_edits
    redirect_to home_path if current_user.id != Equipment.find(params[:id]).user_id
  end

end
