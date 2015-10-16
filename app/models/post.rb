class Post < ActiveRecord::Base
	has_paper_trail
	belongs_to :category
	validates_presence_of :title, :content
	validates_length_of :title, minimum: 5
	validates_length_of :content, minimum: 8
end
