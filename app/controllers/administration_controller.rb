class AdministrationController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enabled
  before_action :check_admin

  def users_index
    @users = User.paginate(page: params[:page])
  end

  def users_details
    @user = User.find(params[:id])
  end

  def users_new
    @user = User.new
  end

  def users_edit
    @user = User.find(params[:id])
  end

  def users_create
    @user = User.new(user_params)

    alphanumeric_series = (('a'..'z').to_a) + ((1..9).to_a) + (('A'..'Z').to_a)
    shuffled_series = alphanumeric_series.shuffle
    temporary_password = shuffled_series[0..9].join

    @user.password = temporary_password
    @user.password_confirmation = temporary_password

    @user.enabled = true

    # Attempt to save the user now.
    if @user.save
      flash[:notice] = "New user created successfully. The password is #{temporary_password}"
      redirect_to admin_users_details_path(@user)
    else
      render 'new'
    end
  end

  def users_update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = "User details updated successfully."
      redirect_to admin_users_details_path(@user)
    else
      render 'edit'
    end
  end

  def users_disable
    @user = User.find(params[:id])

    @user.enabled = false
    @user.save

    flash[:notice] = "User has been disabled."
    redirect_to admin_users_details_path(@user)
  end

  def users_enable
    @user = User.find(params[:id])

    @user.enabled = true
    @user.save

    flash[:notice] = "User has been activated."
    redirect_to admin_users_details_path(@user)
  end

  def users_remove
    @user = User.find(params[:id])

    @user.destroy

    flash[:notice] = "User has been deleted successfully."
    redirect_to admin_users_index_path
  end

  private
    def user_params
      params.require(:user).permit(:email, :name, :father_name, :job_title, :date_of_birth, :phone, :address, :city, :pin_zip, :state, :country, :notes)
    end
end
