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
      @user = current_user
      @book = Book.new(book_params)
      @books = Book.all
     if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to books_path(@book.id)
     else
      render action: :index
     end
  end
   
end
  
   private
    def book_params
      params.require(:book).permit(:title, :body)
    end
   
