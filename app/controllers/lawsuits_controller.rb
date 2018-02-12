class LawsuitsController < ApplicationController
  def manage
    @client = Client.find(params[:client_id])

    @lawsuits = @client.lawsuits.paginate(page: params[:page])
  end

  def details
    @lawsuit = Lawsuit.find(params[:id])
  end
end
