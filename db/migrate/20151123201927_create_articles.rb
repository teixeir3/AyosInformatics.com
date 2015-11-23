class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id, null: false
      t.string :title
      t.string :url
      t.text :description
      t.integer :ord
      t.boolean :display, null: false, default: true
      
      t.timestamps
    end
    
    add_index :articles, :user_id
  end
end
