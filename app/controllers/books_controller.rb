class BooksController < ApplicationController
  before_action :find_book, only: [:edit,
                                   :update,
                                   :show,
                                   :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(params_book)
    if @book.save
      redirect_to root_path, notice: "新增成功"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(params_book)
      redirect_to edit_book_path, notice: "編輯成功"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @book.destroy
    redirect_to root_path, notice: "刪除成功"
  end

  private
  
  def find_book
    @book = Book.find(params[:id])
  end

  def params_book
    params.require(:book).permit(:title,
                                 :description,
                                 :list_price,
                                 :ssell_price,
                                 :page_num,
                                 :isbn,
                                 :isbn13,
                                 :on_sell)
  end

end
