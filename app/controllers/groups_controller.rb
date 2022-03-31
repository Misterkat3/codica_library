class GroupsController < ApplicationController
  before_action :set_group, only: :show

  def index
    @groups = Group.includes(:books).all
  end

  def show
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end
end
