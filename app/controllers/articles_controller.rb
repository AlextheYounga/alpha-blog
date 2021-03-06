class ArticlesController < ApplicationController #class name has to be CamelCase

before_action :set_article, only: [:edit, :update, :show, :destroy] 
before_action :restrict, only: [:edit, :update, :new]
 
 
def index
  #@articles = Article.all
  @articles = Article.order("created_at desc") 
end


  def new   #it's called "new" because it's a new articles page
    @article = Article.new
  end
  

def edit
  
end
  
  
def create #this is for the process of sending an article to the database
  @article = Article.new(article_params) #This is the instance variable that will allow your article to be saved from the create method
  @article.user = User.last
  if @article.save
  flash[:notice] = "Article was successfully created"
  redirect_to article_path(@article)   #After creation, this will redirect the view to the last created article
  else
    render 'new'
  end
end


def update  
  if @article.update(article_params)
    flash[:notice] = "Article was successfully updated"
    redirect_to article_path(@article)
  else
    render 'edit'
  end
end


def show

end


def destroy
  @article.destroy
  flash[:notice] = "Article was successfully deleted"
  redirect_to articles_path
end


#THESE ARE METHODS THAT CAN BE USED THROUGHOUT THE CONTROLLER;
 private
  def set_article # This function used to be called in edit, show, update, and destroy; in efforts to shorten the code, we threw them all in one basket and called them at the top.
    @article = Article.find(params[:id])  #Find function to find the specific article in the db
  end
 
  def article_params
    params.require(:article).permit(:title, :description, category_ids:[])   #The params hash and the permissions will save the article title and description 
  end
  
  def restrict 
    if not logged_in?
      redirect_to root_path
    end
  end
  
end


 