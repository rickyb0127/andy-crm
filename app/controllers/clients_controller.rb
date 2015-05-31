class ClientsController < ApplicationController
  def index
    @user = current_user
    @clients = Client.all
  end

  def new
    @user = current_user
    @client = Client.new
  end

  def create
    @client = Client.new(client_params.merge(user_id: current_user.id))
    if @client.save
      flash[:notice] = "Client was successfully created"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @client = Client.find(params[:id])
  end

  def update
    @user = current_user
    @client = Client.find(params[:id])
    if @client.update(client_params)
      flash[:notice] = "Client updated"
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :email, :phone_number,
    :address, :is_home, :is_interested, :user_id, :has_referral, :want_to_be_contacted, :notes)
  end
end
