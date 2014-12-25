# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets.chomp 
end

def calculate_upvotes(story, category)
	upvotes = 1
	if category == "cats" 
		upvotes * 5
	elsif category == "bacon"
		upvotes * 8
	elsif category == "Food"
		upvotes * 3
	end	

	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

# Great work on the conditionals, Brittney.  Please be mindful of your casing!
# cat and bacon are both lower cased and Food is upper case
# You could improve this by doing something like category.downcase == 'cat'
# so that way no matter what casing the user inputs you know it will always be all downcase

p calculate_upvotes('test story', 'cats') == 5
p calculate_upvotes('test story', 'bacon') == 8
p calculate_upvotes('test story', 'Food') == 3
p calculate_upvotes('test story', 'food') == 3
p calculate_upvotes('test story', 'foo') == 1