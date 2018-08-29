class TodoItemsController < ApplicationController
  def index
    @todo_items = TodoItem.all
  end

  def show
    # binding.pry 
    @todo_item = TodoItem.find(params[:id])
  end

  def new
    @todo_item = TodoItem.new
  end

  def edit
    @todo_item = TodoItem.find(params[:id])
  end

  def create
    @todo_item = TodoItem.new(todo_item_params)
    if @todo_item.save
      redirect_to @todo_item, notice: "todoを登録しました"
    else
      render :new
    end
  end

  def update
    # binding.pry
    @todo_item = TodoItem.find(params[:id])
    render plain: @todo_item.title
    return
    if @todo_item.update(todo_item_params)
      redirect_to @todo_item, notice: "todoを編集しました"
    else
      render :edit
    end
  end

  def destroy
    @todo_item.destroy
    respond_to do |format|
    redirect_to todo_item, notice: "todoを削除しました"
    end
  end
  

  private

  def todo_item_params
      params.require(:todo_item).permit(:title, :contents)
  end
end
