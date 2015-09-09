class Post < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :title, :content
	validates_length_of :title, minimum: 5
	validates_length_of :content, minimum: 8
end
