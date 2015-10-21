class Post < ActiveRecord::Base
	belongs_to :user
	acts_as_votable
	
	has_paper_trail
	belongs_to :category
	validates_presence_of :title, :content
	validates_length_of :title, minimum: 5
	validates_length_of :content, minimum: 8
	
	def score
  		self.get_upvotes.size - self.get_downvotes.size
  	end
end
