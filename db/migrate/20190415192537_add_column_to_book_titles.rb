class AddColumnToBookTitles < ActiveRecord::Migration[5.2]
  def change
    add_column :book_titles, :name, :string
  end
end
