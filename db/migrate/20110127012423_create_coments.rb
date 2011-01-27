class CreateComents < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :email, :null => false
      t.text :content, :null => false
      t.integer :post_id, :null => false
      
      t.timestamps
    end
    add_index :comments, :post_id
  end

  def self.down
    drop_table :comments
  end
end
