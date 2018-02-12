class LawsuitsController < ApplicationController
  def manage
    @client = Client.find(params[:client_id])

    @lawsuits = @client.lawsuits.paginate(page: params[:page])
  end

  def details
    @lawsuit = Lawsuit.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @lawsuit = Lawsuit.new
  end

  def edit
    @lawsuit = Lawsuit.find(params[:id])
    @client = @lawsuit.client
  end

  def create
    @client = Client.find(params[:client_id])

    @lawsuit = Lawsuit.new(lawsuit_params)
    @lawsuit.client = @client

    if @lawsuit.save
      flash[:notice] = "Lawsuit created successfully!"
      redirect_to lawsuit_details_path(@lawsuit)
    else
      render 'new'
    end
  end

  def update
    @lawsuit = Lawsuit.find(params[:id])
    @client = @lawsuit.client

    if @lawsuit.update(lawsuit_params)
      flash[:notice] = "Lawsuit updated successfully!"
      redirect_to lawsuit_details_path(@lawsuit)
    else
      render 'edit'
    end
  end

  def remove
    @lawsuit = Lawsuit.find(params[:id])
    @client = @lawsuit.client

    @lawsuit.destroy
    flash[:notice] = "Lawsuit deleted successfully!"
    redirect_to manage_lawsuits_path(@client)
  end


  private
      def lawsuit_params
        params.require(:lawsuit).permit(:case_number, :case_type, :court_name, :location, :filing_date, :opposite_party, :case_details)
      end
end
