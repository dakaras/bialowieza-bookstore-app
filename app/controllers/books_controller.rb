class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def dish_params
    params.require(:book).permit(:title, :genre, :price, :summary, :author_id, author_attributes: [:name])
  end
end
