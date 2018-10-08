class RemoveUrlFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :url, :text
  end
end
