class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :cotegory_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
