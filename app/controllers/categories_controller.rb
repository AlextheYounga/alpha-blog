class CategoriesController < ApplicationController
  
  before_action :restrict
  
  def index
    
  end
  
  def create
    
  end
  
  def new
    @category = Category.new
  end
  
  def show
    
  end
  
  
  private
  def restrict 
    if not logged_in?
      redirect_to root_path
    end
  end
  
end