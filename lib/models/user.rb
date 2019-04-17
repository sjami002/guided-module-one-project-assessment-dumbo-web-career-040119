class User < ActiveRecord::Base
  has_many :book_reviews
  has_many :book_titles, through: :book_reviews

  def hello
    puts "hello"
  end

  def self.sign_up(name, borough)
    self.create(name: name, borough: borough)
  end


end
