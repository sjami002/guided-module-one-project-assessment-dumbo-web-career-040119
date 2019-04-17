class BookReview < ActiveRecord::Base
  belongs_to :book_title
  belongs_to :user


  # <--------- CREATE --------->
  #
  # def self.create_book_reviews_for_this_user
  #
  #   puts "Please enter your name"
  #   input = gets.chomp
  #
  #   curr_user = User.find_by(name: input)
  #   BookReview.create_book_review_for_this_user(curr_user)
  # end
  #
  #
  # def self.create_book_review_for_this_user(curr_user)
  #
  #     if curr_user
  #       curr_user_books = curr_user.book_titles
  #       curr_user_books.map do |book|
  #         review_of_specific_book = curr_user.book_reviews.find {|i| i.book_title_id == book.id}
  #
  #                 # puts "#{review_of_specific_book.id}) #{book.name} - #{review_of_specific_book.review}"
  #         puts "#{book.id}) #{book.name} - #{review_of_specific_book.review}"
  #       end
  #     end
  #
  #
  #     puts "Please enter the ID number"
  #     input2 = gets.chomp
  #
  #     find_library_id = LibraryTitle.all.find_by(book_title_id: input2).library_id
  #
  #
  #
  #     puts "Please enter your review"
  #     revrev = gets.chomp
  #
  #
  #     br = BookReview.create(user_id: curr_user.id, book_title_id: input2, library_id: find_library_id, review: revrev)
  #               # BookReview.update(user_id: curr_user.id, book_title_id: input2, library_id: find_library_id, review: input3)
  #     return br
  #   end



  # <--------- READ --------->

  def self.display_book_and_reviews_for_this_user
    puts "Please enter your name"
    input = gets.chomp

    curr_user = User.find_by(name: input)
    BookReview.display_book_reviews(curr_user)
  end

  def self.display_book_reviews(curr_user)

      if curr_user
        curr_user_books = curr_user.book_titles
        curr_user_books.map do |book|
          review_of_specific_book = curr_user.book_reviews.find {|i| i.book_title_id == book.id}

          puts "#{review_of_specific_book.id}) #{book.name} - #{review_of_specific_book.review}"
        end
      end
    end




    # <--------- UPDATE -------->

    # 1) Alchemist - great
    # 10) Cinder - witty
    # br = BookReview.find(10)
    # br.update(review: "wittier!!!")
    # br

    def self.update_book_reviews_for_this_user

      puts "Please enter your name"
      input = gets.chomp

      curr_user = User.find_by(name: input)
      # binding.pry
      if curr_user == nil
        puts "Name not found.\nPlease try again later.\nGoodbye!"
        sleep 2

        exit
        # self.update_book_reviews_for_this_user
        # CommandLineInterface.user_todo_list
      end

      BookReview.display_book_titles_by_user(curr_user)

    end




    def self.display_book_titles_by_user(curr_user)

        if curr_user
          curr_user_books = curr_user.book_titles
          curr_user_books.map do |book|
            review_of_specific_book = curr_user.book_reviews.find {|i| i.book_title_id == book.id}
            puts "#{review_of_specific_book.id}) #{book.name} - #{review_of_specific_book.review}"
          end
        end

        puts "Please enter the ID number"
        input2 = gets.chomp
        # binding.pry
        book_review_for_given_id = BookReview.find(input2)

        puts "Please enter your review"
        input3 = gets.chomp

        book_review_for_given_id.update(review: input3)


        puts "Your updated review: #{book_review_for_given_id.id}) #{book_review_for_given_id.book_title.name} - #{book_review_for_given_id.review}"
      end



        # <--------- DELETE -------->

        def self.delete_book_reviews_for_this_user

          puts "Please enter your name"
          input = gets.chomp

          curr_user = User.find_by(name: input)
          BookReview.display_books_for_this_user(curr_user)
        end


        def self.display_books_for_this_user(curr_user)

            if curr_user
              curr_user_books = curr_user.book_titles
              curr_user_books.map do |book|
                review_of_specific_book = curr_user.book_reviews.find {|i| i.book_title_id == book.id}
                puts "#{review_of_specific_book.id}) #{book.name} - #{review_of_specific_book.review}"
              end
            end

            puts "Please enter the ID number"
            input2 = gets.chomp

            book_review_for_given_id = BookReview.find_by(input2)

            book_review_for_given_id.destroy


            puts "Your previous entry has been deleted"

          end



end










  # find book review by book Title
  # BookReview.find_by(book_title_id: BookTitle.find_by(name: "Island").id)
  # BookReview.where(book_title_id: BookTitle.where(name: "Island").ids)

  # BookReview.update(user_id: jamil.id, book_title_id: alchemist.id, library_id: bronx_library.id, review: "great")
