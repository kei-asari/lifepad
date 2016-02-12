class RenameColumnToArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :cotegory_id, :category_id
  end
end
