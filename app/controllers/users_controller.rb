class UsersController < ApplicationController
  def index
    render root_path
  end

  def show
    @user = User.find( params[:id] )
  end
end
