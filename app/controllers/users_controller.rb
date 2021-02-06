class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
 
end
