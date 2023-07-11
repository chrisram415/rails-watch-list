class ListsController < ApplicationController
  # my logic
  def index
    @lists = List.all
  end

  def show
    # raise
    @list = List.find(params[:id])
  end

  def new
    # the form
    @list = List.new
  end

  def create
    # stores info
    # raise
    @list = List.create(list_params)
    redirect_to list_path(@list)
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
