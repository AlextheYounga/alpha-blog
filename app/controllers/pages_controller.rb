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


  def blog
    require 'rubygems'
    require 'rss'
    require 'open-uri'
    
    @rss = RSS::Parser.parse('https://medium.com/feed/@AlextheYounger/')
    
    
   
  end
end




