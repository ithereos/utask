class ListsController < ApplicationController
  def index
  end

  def new
    @list = List.new
  end

  def update
  end

  def create
    List.create(list_params)
  end

  def destroy
  end

  def show
  end

  private

  def list_params
    params.require(:list).permit(:name)
    
  end
end
