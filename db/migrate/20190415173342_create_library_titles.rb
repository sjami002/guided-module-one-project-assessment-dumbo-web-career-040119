class CreateLibraryTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :library_titles do |t|
    t.integer :user_id
    t.integer :book_title_id
    t.integer :library_id
  end
  end
end
