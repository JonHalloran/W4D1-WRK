class AddUserIdToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :user_id, :integer
  end
end
