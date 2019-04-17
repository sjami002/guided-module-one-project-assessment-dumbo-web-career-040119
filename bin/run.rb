require_relative '../config/environment'

cli = CommandLineInterface.new

cli.welcome
cli.greeting
cli.user_status
# user = User.last
# cli.user_todo_list

# user.hello

#the order of the commands needed in the cli app 1,2,3,4 ....



# binding.pry

# def display_book_and_reviews_for_this_user
#   puts "Please enter your name"
#   input = gets.chomp
#
#   curr_user = User.find_by(name: input)
#
# def display_book_titles_by_user
#
#     if input == curr_user.name
#       curr_user_books = curr_user.book_titles
#       curr_user_books.map do |book|
#         puts "#{book.name} - #{curr_user.book_reviews.find {|i| i.book_title_id == book.id}.review}"
#       end
#     end
#
# end
# end
