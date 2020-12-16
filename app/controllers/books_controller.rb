class BooksController < ApplicationController
  def top
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book=Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    # 後ほどリンク先を書き換える
    redirect_to book_path(book.id)
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
