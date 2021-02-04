class BooksController < ApplicationController
  
  def show
    @book = Book.new
    @book = Book.find(params[:id])
  end
  
  def index
     @book = Book.new
     @books = Book.all
  end
  
end
