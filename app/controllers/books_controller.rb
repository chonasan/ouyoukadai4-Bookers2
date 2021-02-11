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

  # 　@tweet = Tweet.new(tweet_params)  # フォームから送られてきたデータ(body)をストロングパラメータを経由して@tweetに代入
  #   @tweet.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
  #   @tweet.save
  #   redirect_to tweets_path

  def create
      @user = current_user
      @book = Book.new(book_params)
      @book.user_id = current_user.id
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
      params.require(:book).permit(:title, :body, :profile_image)
    end

