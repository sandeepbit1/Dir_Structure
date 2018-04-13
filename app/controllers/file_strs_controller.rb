class FileStrsController < ApplicationController
  def index
     @file_strs = FileStr.all
  end

  def show
    @file_str = FileStr.find(params[:id])
  end

  def new
    @file_strs = FileStr.new
  end

  def edit
    @file_str = FileStr.find(params[:id])
  end

  def create
    @dir_str = DirStr.find(params[:dir_str_id])
    @file_str = @dir_str.file_strs.create(file_str_params)
    redirect_to dir_str_path(@dir_str)
  end

  def update
    @_strs = FileStr.find(params[:id])
    if @file_strs.update(file_str_params)
      redirect_to @file_strs
    else
      render 'edit'
    end
  end

  def destroy
    @dir_str = DirStr.find(params[:dir_str_id])
    @file_str = @dir_str.file_strs.find(params[:id])
    @file_str.destroy
    redirect_to dir_str_path(@dir_str)
  end


  private
  def file_str_params
    params.require(:file_str).permit(:name, :parent_dir, :owner)
  end

end
