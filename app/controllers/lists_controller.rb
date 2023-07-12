class ListsController < ApplicationController
  # my logic
  before_action :set_list, only: [:show, :destroy]

  def index
    @lists = List.all
  end

  def show
    # raise
    # @list = List.find(params[:id])
  end

  def new
    # the form
    @list = List.new
  end

  def create
    # stores info
    # raise
    @list = List.new(list_params)
    # redirect_to list_path(@list)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # calls the destroy method on the @list aka our params id for list
    @list.destroy
    # Then redirect the user to the lists_path aka the index
    # status: :see_other responds with a 303 HTTP status code
    redirect_to lists_index_path, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:id])
  end


  def list_params
    params.require(:list).permit(:name)
  end
end
