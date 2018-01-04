class ArticlesController < ApplicationController #class name has to be CamelCase
 
#THIS IS THE METHOD FOR THE INDEX, OR THE LISTING ARTICLES PAGE  
def index
  @articles = Article.all
end


# THIS IS THE METHOD FOR THE NEW PAGE
  def new   #it's called "new" because it's a new articles page
    @article = Article.new
  end
  
 
#THIS IS THE METHOD FOR THE EDIT PAGE
def edit
  @article = Article.find(params[:id])
end
  

#THIS IS THE METHOD FOR THE ARTICLE CREATION METHOD  
def create #this is for the process of sending an article to the database
   
    @article =Article.new(article_params) #This is the instance variable that will allow your article to be saved from the create method
    #@article.save
  if @article.save
  flash[:notice] = "Article was successfully created"
  redirect_to article_path(@article)   #After creation, this will redirect the view to the last created article
else
    render 'new'
  end
end


#THIS IS THE METHOD FOR THE ARTICLE UPDATE METHOD
def update  
  @article = Article.find(params[:id])
  if @article.update(article_params)
    flash[:notice] = "Article was successfully updated"
    redirect_to article_path(@article)
  else
    render 'edit'
  end
end


#THIS IS THE METHOD FOR THE SHOW PAGE 
def show
    @article = Article.find(params[:id])   #article id is going to be passed through the params hash
end
  

#THIS IS THE METHOD FOR THE DESTROY FUNCTION
def destroy
  @article = Article.find(params[:id])
  @article.destroy
  flash[:notice] = "Article was successfully deleted"
  redirect_to articles_path
end
  
  
#THIS IS THE METHOD FOR THE ARTICLE PARAMETERS FUNCTION
 private
  def article_params
    params.require(:article).permit(:title, :description)   #The params hash and the permissions will save the article title and description 
  end
  
end


 