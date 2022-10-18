class AddPostIdToLike < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :post_id, :integer
    add_index :likes, :post_id
  end
end
