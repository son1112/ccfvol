class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
    @activity.shifts.build
  end

  def edit
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to @activity, notice: 'Activity was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @activity.update(activity_params)
      redirect_to @activity, notice: 'Activity was successfully updated.' 
    else
      render action: 'edit'
    end
  end

  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_activity
    @activity = Activity.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def activity_params
    params.require(:activity).permit(:title, :coordinator, :tickets, :shifts, :painted_sign, shifts_attributes: [:id, :title, :vols, :_destroy])
  end
end


