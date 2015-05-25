class WelcomeController < ApplicationController
  def index
    @user = current_user.id
  end
end
