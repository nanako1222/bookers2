class BooksController < ApplicationController
  def new
  end

  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end

  def show
    @newbook = Book.new
    @book = Book.find(params[:id])
    @user = @book.user
  end

end
