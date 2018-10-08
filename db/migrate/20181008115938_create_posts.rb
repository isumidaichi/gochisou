class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.text :image_url
      t.text :url
      t.integer :host_id
      t.boolean :is_published

      t.timestamps
    end
  end
end
