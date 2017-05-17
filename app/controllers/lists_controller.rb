class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def index
    @list = List.new
    @lists = List.all
    # render 'lists/index.html.erb'
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to @list
  end

  def show
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name)
    end
end
