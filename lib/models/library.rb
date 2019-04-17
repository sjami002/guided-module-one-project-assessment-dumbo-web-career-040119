class Library < ActiveRecord::Base
  has_many :library_titles
  has_many :book_titles, through: :library_titles

  def self.display_library_locations
    Library.all.map {|i| i.location}
    
  end
end
