class AuthorsController < ApplicationController
  before_action :set_author, only: :show

  def index
    @authors = Author.includes(:books).order(id: :desc).all
  end

  def show
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end
end
