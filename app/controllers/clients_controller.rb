class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      flash[:notice] = "Client was successfully created"
      redirect_to clients_path
    else
      render :new
    end
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.save(client_params)
      flash[:notice] = "Client updated"
      redirect_to clients_path
    else
      render :edit
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number, :address, :is_home, :is_interested)
  end
end
