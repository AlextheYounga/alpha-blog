class CategoriesController < ApplicationController
  
  before_action :restrict, only: [:new, :edit]
  
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
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:success] = "Name was successfully updated"
      redirect_to categories_path(@category)
    else
      render 'edit'
    end
  end
  
  def show
    @category = Category.find(params[:id])
    @category_articles = @category.articles.order("created_at desc")
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