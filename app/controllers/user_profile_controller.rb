class UserProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to
    else
      render :edit
    end
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:name, :memo, :job_type)
    end
end
