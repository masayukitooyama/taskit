class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:edit, :show, :update, :destroy]

  # 一覧
  def index
    @users = User.all()
  end

  # 詳細
  def show
  end

  # 新規登録画面
  def new
    @user = User.new
  end

  # 新規登録
  def create
    @user = User.new(user_params)
  end

  # 編集画面
  def edit
  end

  # 更新
  def update
    if @user.update(user_params)
      redirect_to user_params, notice: "登録が完了しました。"
    else
      render :new
    end
  end

  # 削除
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to reports_url, notice: 'Report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params

  end
end
