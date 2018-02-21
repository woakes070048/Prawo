class AdministrationController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enabled
  before_action :check_admin

  def users_index
    @users = User.paginate(page: params[:page])
  end
end
