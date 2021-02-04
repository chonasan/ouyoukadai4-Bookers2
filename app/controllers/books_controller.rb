class BooksController < ApplicationController
  
  def show
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def create
      @book = Book.new(book_params)
      @books = Book.all
     if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
     else
      redirect_to book_path(@book.id)
     end
  end
  
   private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
  
end
