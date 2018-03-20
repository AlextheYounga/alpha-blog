require 'rubygems' 
require 'rss'

class PagesController < ApplicationController

  
  def home
    @articles = Article.order("created_at desc").limit(3) 
    
  end


  def about
  end

  def readinglist
  end
  
  def projects
  end
  
  def playground
  end
  
  def search
    if params[:stock].present?
      @stock = Stock.new_from_lookup(params[:stock])
      if @stock
        render 'pages/playground'
      else
        flash[:danger] = "You have entered an incorrect symbol"
        redirect_to playground_path
      end
      else
        flash[:danger] = "You have entered an incorrect search string"
        redirect_to playground_path
        
    end
  end
end






