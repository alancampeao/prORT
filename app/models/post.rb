class Post < ActiveRecord::Base
	belongs_to :category
	validates_presence_of :titulo, :conteudo
	validates_length_of :titulo, minimum: 5
	validates_length_of :conteudo, minimum: 8
end
