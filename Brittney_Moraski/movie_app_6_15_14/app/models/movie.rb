class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :description, length: {minimum: 10}
	def self.search_movie(param)
		where("title LIKE :query OR description LIKE :query", query: "%#{param}%")
	end
end
