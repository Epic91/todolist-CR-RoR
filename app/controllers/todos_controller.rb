class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
  end

  def create
    @todo = Todo.new
    @todo[:title] = params[:todo][:title]
    @todo[:task] = params[:todo][:task]
    @todo[:name] = params[:todo][:name]
    @todo.save
    redirect_to todo_path(@todo)
  end

  def show
    @todo = Todo.find(params[:id])
  end
end
