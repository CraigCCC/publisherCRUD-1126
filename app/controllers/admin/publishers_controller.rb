class Admin::PublishersController < ApplicationController
  before_action :find_publisher, only: [:edit,
                                        :update,
                                        :show,
                                        :destroy]

  layout "backend"

  def index
    @publishers = Publisher.all
  end

  def new
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(params_publisher)
    if @publisher.save 
      redirect_to admin_publishers_path, notice: "新增成功！"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @publisher.update(params_publisher)
      redirect_to edit_admin_publisher_path, notice: "編輯成功！"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @publisher.destroy
    redirect_to admin_publishers_path, notice: '刪除成功！'
  end

  private
  def find_publisher
    @publisher = Publisher.find(params[:id])
  end

  def params_publisher
    params.require(:publisher).permit([:name,
                                       :tel,
                                       :address,
                                       :note,
                                       :online])
  end
end
