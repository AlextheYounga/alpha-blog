#this is a model; with the magic of rails, just because this model exists, rails gives us getters and senders with the table in the db. 
class Article < ActiveRecord::Base #this is a subclass from ActiveRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 100}    #this prevents an article from being submitted without a title; this helps maintain data integrity, also must be specific lengths
  validates :user_id, presence: true
end