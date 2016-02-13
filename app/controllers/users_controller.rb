class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit]

  def index
    @users = User.all()
  end

  def edit
  end

  def create
    @user = User.new
  end

  private
  def set_user
    @user = User.find_by(params[:id])
  end
end
