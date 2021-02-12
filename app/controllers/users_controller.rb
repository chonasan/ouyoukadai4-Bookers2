class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all #current_user
  end

  
  def edit
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(@user.id) 
    else
      render action: :users_id_edit
    end
  end
  
   

  
  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

 
end
