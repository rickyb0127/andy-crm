class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address, :is_home, :is_interested))
    if @client.save
      flash[:notice] = "Client was successfully created"
      redirect_to "/"
    else
      render :new
    end
  end
end
