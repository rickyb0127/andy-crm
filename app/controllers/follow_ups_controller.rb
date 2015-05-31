class FollowUpsController < ApplicationController
  def index
    @user = current_user
    @clients = @user.clients
  end

  def show
    @client = Client.find(params[:id])
  end
end
