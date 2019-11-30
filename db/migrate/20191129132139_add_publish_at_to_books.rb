class AddPublishAtToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :published, :Date    
  end
end
