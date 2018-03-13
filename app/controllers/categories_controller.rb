class CategoriesController < ApplicationController
  
  before_action :restrict
  
  def index
    @categories = Category.all
  end
  
  def create
    @category = Category.new(category_params)
      if @category.save
        flash[:success] = "Category was successfully created"
        redirect_to categories_path
      else
        render 'new'
      end
  end
  
  
  def new
    @category = Category.new
  end
  
  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles
  end
  
  
  private
    def category_params
      params.require(:category).permit(:name)
    end
  
    def restrict 
      if not logged_in?
        redirect_to root_path
      end
    end
  
end