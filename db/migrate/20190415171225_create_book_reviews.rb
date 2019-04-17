class CreateBookReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :book_reviews do |t|
      t.integer :user_id
      t.integer :book_title_id
      t.integer :library_id
      t.string :review
    end
  end
end
