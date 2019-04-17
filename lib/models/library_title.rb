class LibraryTitle < ActiveRecord::Base
  belongs_to :library
  belongs_to :book_title
end
