class BookTitle < ActiveRecord::Base
  has_many :book_reviews
  has_many :users, through: :book_reviews

  has_many :library_titles
  has_many :libraries, through: :library_titles


  def self.display_book_titles
    BookTitle.all.map {|i| i.name}
  end


end
