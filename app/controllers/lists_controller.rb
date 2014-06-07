class ListsController < ApplicationController
  def index
    @lists = current_user.lists
    @categories = Category.all

  end

  def new
    @list = List.new
  end

  
  def create
    current_user.lists.create(list_params)
    redirect_to lists_path
  end

  def destroy
    List.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to lists_url
  end


  def show
    @list = List.find(params[:id]) 
  end


  def destroy
    List.find(params[:id]).destroy
    flash[:success] = "Lista eliminada"
    redirect_to lists_url
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      flash[:success] = "Profile updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  def edit
    @list = List.find(params[:id])
  end


  private

  def list_params
    params.require(:list).permit(:name,:category)
    
  end
end
