#this is a model; with the magic of rails, just because this model exists, rails gives us getters and senders with the table in the db. 
class Article < ActiveRecord::Base    #this is a subclass from ActiveRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 50}    #this prevents an article from being submitted without a title; this helps maintain data integrity, also must be specific lengths
                                                          
end