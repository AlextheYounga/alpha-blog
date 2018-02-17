require 'rubygems' 
require 'rss'

class PagesController < ApplicationController

  
  def home
    @articles = Article.order("created_at desc").limit(5) 
    
  end



  def about
  end



  def readinglist
  end
  
  def projects
  end

end




