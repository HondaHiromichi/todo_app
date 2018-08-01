class TodoItemsController < ApplicationController
  def index
    # @user = User.find 2
    # user = User.find 2
    todo_item = TodoItem.find 1
    user = todo_item.user

    render plain: user.name
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
