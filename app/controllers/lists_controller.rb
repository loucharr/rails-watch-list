class ListsController < ApplicationController
  def index
    @list = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end
end
