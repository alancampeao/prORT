class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	acts_as_votable

	has_paper_trail
	belongs_to :category
	validates_presence_of :title, :content, :category_id
	validates_length_of :title, minimum: 5
	validates_length_of :content, minimum: 8
	validates_presence_of :anonymous, :allow_blank => true

	def score
  		self.get_upvotes.size - self.get_downvotes.size
  	end

  	def self.search(query)
  		if query.present?
  			where(['title LIKE :query OR content LIKE :query', query: "%#{query}%"])
  		else
  			all
  		end
  	end
end
