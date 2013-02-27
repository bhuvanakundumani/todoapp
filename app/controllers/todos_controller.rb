class TodosController < ApplicationController
  def index
      
  @todo_items = Todo.all
      
      
  
  end
    
    
  def add
      
      Todo.create(:todo_item => params[:todo_text])
      redirect_to :action => 'index'
      
  end 
    
  def delete
      
  t = Todo.last
  t.destroy
      
  end
end
