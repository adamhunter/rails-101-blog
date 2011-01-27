class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :publish_at
      t.integer :reads
      t.boolean :private

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
