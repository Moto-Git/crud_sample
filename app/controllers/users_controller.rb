class UsersController < ApplicationController

  # 一覧画面に対応するアクション
  def index
    @users = User.all
  end

  # 新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  # 新規登録するためのアクション
  def create
    User.create(user_params)
  end

  # 登録を削除するためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
  end

  # def destroy
  #   user = User.find(params[:id])
  #   user.destroy
  # end

  # 個人情報などの公開してはデータはprivateに収める
  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
