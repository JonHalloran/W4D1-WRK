class AddIndexArtworkUserIdAndTitle < ActiveRecord::Migration[5.1]
  def change
    add_index :artworks, [:user_id, :title]
  end
end
