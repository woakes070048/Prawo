class UpdatesController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enabled

  def index
    @updates = Update.paginate(page: params[:page])
  end

  def manage
    @lawsuit = Lawsuit.find(params[:lawsuit_id])

    @updates = @lawsuit.updates.paginate(page: params[:page])
  end

  def details
    @update = Update.find(params[:id])
  end

  def new
    @lawsuit = Lawsuit.find(params[:lawsuit_id])
    @update = Update.new
  end

  def edit
    @update = Update.find(params[:id])
    @lawsuit = @update.lawsuit
  end

  def create
    @lawsuit = Lawsuit.find(params[:lawsuit_id])

    @update = Update.new(update_params)
    @update.lawsuit = @lawsuit

    if @update.save
      flash[:notice] = "Update saved successfully."

      @activity_log = Log.new(detail: "Update: #{@update.title} added for Lawsuit: #{@lawsuit.case_number}")
      @activity_log.user = current_user
      @activity_log.save

      redirect_to update_details_path(@update)
    else
      render 'new'
    end
  end

  def update
    @update = Update.find(params[:id])
    @lawsuit = @update.lawsuit

    if @update.update(update_params)
      flash[:notice] = "Update updated successfully."

      @activity_log = Log.new(detail: "Update: #{@update.title} updated for Lawsuit: #{@lawsuit.case_number}")
      @activity_log.user = current_user
      @activity_log.save

      redirect_to update_details_path(@update)
    else
      render 'edit'
    end
  end

  def remove
    @update = Update.find(params[:id])
    @lawsuit = @update.lawsuit

    @update.destroy
    flash[:notice] = "Update deleted successfully."

    @activity_log = Log.new(detail: "Update: #{@update.title} removed from Lawsuit: #{@lawsuit.case_number}")
    @activity_log.user = current_user
    @activity_log.save

    redirect_to manage_updates_path(@lawsuit)
  end


  ######### Private Methods Area
  private
    def update_params
      params.require(:update).permit(:title, :details)
    end
end
