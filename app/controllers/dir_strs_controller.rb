class DirStrsController < ApplicationController
  def index
     @dir_strs = DirStr.all
  end

  def show
    @dir_str = DirStr.find(params[:id])
  end

  def new
    @dir_strs = DirStr.new
  end

  def edit
    @dir_strs = DirStr.find(params[:id])
  end

  def create
    #@dir_strs = DirStr.new(params.require(:dir_strs).permit(:name, :parent_dir, :owner))
    @dir_strs = DirStr.new(dir_str_params)
    if @dir_strs.save
      redirect_to @dir_strs
    else
      render 'new'
    end
  end

  def update
    @dir_strs = DirStr.find(params[:id])
    if @dir_strs.update(dir_str_params)
      redirect_to @dir_strs
    else
      render 'edit'
    end
  end


  def destroy
    @dir_strs = DirStr.find(params[:id])
    @dir_strs.destroy

    redirect_to dir_strs_path
  end

  private
  def dir_str_params
    params.require(:dir_str).permit(:name, :parent_dir, :owner)
  end
end
