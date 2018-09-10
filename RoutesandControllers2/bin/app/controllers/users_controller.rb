class UsersController < ApplicationController
  
  def index
    # users = User.all 
    # render json: users
    render plain: "amanda is the coolest" 
  end
  
  
end