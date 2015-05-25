class LeadsController < ApplicationController
  def index
    @user = current_user
    @clients = @user.clients.where(is_interested: true)
  end
end
