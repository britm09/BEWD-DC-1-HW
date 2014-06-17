class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :description, length: {minimum: 10}
	validates :year_released, numericality: {greater_than: 0}
	validates :rating, numericality: {greater_than: 0, less_than: 6}
	
	def self.search_movie(param)
		where("title LIKE :query OR description LIKE :query", query: "%#{param}%")
	end
end
