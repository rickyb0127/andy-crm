class NotInterestedController < ApplicationController
  def index
    @user = current_user
    @clients = @user.clients.where(is_interested: false)
  end
end
