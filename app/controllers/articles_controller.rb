class ArticlesController < ApplicationController #class name has to be CamelCase
  def new   #it's called "new" because it's a new articles page
    @article = Article.new
  end
  
  def create #this is for the process of sending an article to the database
   
    @article =Article.new(article_params) #This is the instance variable that will allow your article to be saved from the create method
    @article.save
    redirect_to articles_show(@article)   #After creation, this will redirect the view to the last created article
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)   #The params hash and the permissions will save the article title and description 
  end
  
end