class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit

  end

  def index
  end

  def delete
  end

  private
  def user_params
    params.require(:user).permit(:name, :image, :intoroduction)
  end
end
