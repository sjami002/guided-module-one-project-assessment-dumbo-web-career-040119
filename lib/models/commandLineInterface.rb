class CommandLineInterface

  def welcome
      puts "          NYPL LIBRARY DATABASE"
      puts
      puts "     ************       ************"
      puts "     *  _______     *     _______  *"
      puts "     *  _______     *     _______  *"
      puts "     *  _______     *     _______  *"
      puts "     *  _______     *     _______  *"
      puts "     *  _______     *     _______  *"
      puts "     *              *              *"
      puts "     ************       ************"
      puts "                   ***"
      puts
  end

  def greeting
    puts "Welcome to NYPL Database"
    puts user_status
  end

  def user_status
    puts "Are you a new user?\n Please enter y or n"
    input = gets.chomp
    puts
    if input.downcase == "y"
      puts "Would you like to sign up?\n Please enter y or n"
      input2 = gets.chomp
      if input2.downcase == "y"
        puts "Please enter your first name"
        input3 = gets.chomp
        puts "Please enter the borough that you live in"
        input4 = gets.chomp
        new_user = User.sign_up(input3, input4)
         puts "Welcome #{input3}!"
        non_user_todo_list
      else non_user_todo_list
      end
    elsif input == "n"

      user_todo_list
    else
      puts "Invalid input. Please enter y or n"
      puts user_status
    end
  end

  def user_todo_list
    puts "What would you like to do today?

      1. Browse Library Locations
      2. Browse Book Catalogue
      3. View previously read Books and Book Reviews
      4. Rewrite a previous Review
      5. Delete an old Review
      6. Exit"

      puts input = gets.chomp

      puts
      if input == "1"
        # Library.display_library_locations
        puts "All Locations"
        Library.all.map {|i| puts i.location}
        puts "------------------------------"
        user_todo_list

      elsif input == "2"
        # BookTitle.display_book_titles
        puts "List of Book Titles"
        BookTitle.all.map {|i| puts i.name}
        puts "------------------------------"
        user_todo_list

      elsif input == "3"
        BookReview.display_book_and_reviews_for_this_user
        user_todo_list

      elsif input == "4"
        BookReview.update_book_reviews_for_this_user
        user_todo_list

      # elsif input == "5"
      #   BookReview.create_book_reviews_for_this_user
      #   user_todo_list

    elsif input == "5"
        BookReview.delete_book_reviews_for_this_user
        user_todo_list

      elsif input == "6"
        puts "Goodbye! See you soon!"
        exit
      else
        puts "Invalid input. Please choose from the following options:"
        user_todo_list
      end

  end


  def non_user_todo_list
    puts "What would you like to do today?

      1. Browse Library Locations
      2. Browse Book Catalogue
      3. Exit"

      puts
      input = gets.chomp

      puts
      if input == "1"
        puts "All Locations"
        Library.all.map {|i| puts i.location}
        puts "------------------------------"
        non_user_todo_list

      elsif input == "2"
        puts "List of Book Titles"
        BookTitle.all.map {|i| puts i.name}
        puts "------------------------------"
        non_user_todo_list

      elsif input == "3"
        puts "Goodbye! See you soon!"
        exit
      else
        puts "Invalid input. Please choose from the following options:"
        non_user_todo_list
      end
    end


    #create user instance
    #save to variable user = User.create(...)
    # user.hello

  end
