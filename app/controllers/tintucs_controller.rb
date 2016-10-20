class TintucsController < ApplicationController
  before_action :find_tintuc, except: [:new,:create]
  def new
    @tintuc = Tintuc.new
  end

  def create
    @tintuc = Tintuc.new(params_tintuc)
    if @tintuc.save
      flash[:success] = "Tao tin tuc thanh cong!"
      redirect_to @tintuc
    else
      flash[:danger] = "Tao tin tuc bi loi!"
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def destroy
    @tintuc.destroy
    redirect_to products_url
  end

  def update
    if @tintuc.update(params_tintuc)
      flash[:success] = "Update tin tuc thanh cong!"
      redirect_to @tintuc
    else
      flash[:danger] = "Update tin tuc bi loi!"
      render 'edit'
    end
  end

  private

  def find_tintuc
    @tintuc = Tintuc.find(params[:id])
  end

  def params_tintuc
    params.require(:tintuc).permit(:avatar,:title,:content)
  end
end
