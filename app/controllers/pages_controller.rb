require 'rubygems' 
require 'rss'
require 'stock_quote'

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
  
  
  
end




