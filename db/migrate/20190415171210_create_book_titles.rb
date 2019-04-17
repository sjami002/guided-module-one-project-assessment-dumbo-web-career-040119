class CreateBookTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :book_titles do |t|
      t.integer :library_id
    end
  end
end
