class InformationsController < ApplicationController
  def new
    @info = Information.new
  end

  def show
    @info = Information.find(params[:id])
  end

  def edit
    @info = Information.find(params[:id])
  end

  def create
    @info = Information.new(info_params)
    if @info.save
      redirect_to @info
    else
      render 'new'
    end
  end

  def destroy
    @info = Information.find(params[:id])
    if @info.destroy
      flash[:success] = "Delete successfull!!!"
      redirect_to products_url
    else
      flash[:danger] = "Error"
    end
  end

  private
  def info_params
    params.require(:information).permit(:title,:string,:avatar)
  end
end
