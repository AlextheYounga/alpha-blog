require 'rss'

class PostsController < ApplicationController
  Post = Struct.new(:title, :content, :pubDate, :link)

  def index
    rss = RSS::Parser.parse('https://medium.com/feed/@AlextheYounger/')
    @posts = rss.items.map do |i|
      Post.new(i.title, i.content_encoded, i.pubDate, i.link)
    end
    
  end
end
