class UpdatePosts < ActiveRecord::Migration
  def self.up
    change_column :posts, :title, :string, :null => false
    change_column :posts, :content, :text, :null => false
  end

  def self.down
    change_column :posts, :title, :string
    change_column :posts, :content, :text
  end
end