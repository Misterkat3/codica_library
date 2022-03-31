class BooksController < ApplicationController
  before_action :set_book

  def show
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end
end
