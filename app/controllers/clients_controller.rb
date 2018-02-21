class ClientsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_enabled

  def index
    @clients = Client.paginate(page: params[:page])
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      flash[:notice] = "Client #{@client.name} created successfully."

      @activity_log = Log.new(detail: "New client: #{@client.id}-#{@client.name} created.")
      @activity_log.user = current_user
      @activity_log.save

      redirect_to @client
    else
      render 'new'
    end
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      flash[:notice] = "Client #{@client.name} updated successfully."

      @activity_log = Log.new(detail: "Client: #{@client.id}-#{@client.name} updated.")
      @activity_log.user = current_user
      @activity_log.save

      redirect_to @client
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    flash[:notice] = "Client #{@client.name} deleted successfully."

    @activity_log = Log.new(detail: "Client: #{@client.id}-#{@client.name} deleted.")
    @activity_log.user = current_user
    @activity_log.save

    redirect_to clients_path
  end

  ### Private Methods
  private
    def client_params
      params.require(:client).permit(:name, :father_name, :phone, :email, :date_of_birth, :address, :city, :pin_zip, :state, :country, :notes)
    end
end
