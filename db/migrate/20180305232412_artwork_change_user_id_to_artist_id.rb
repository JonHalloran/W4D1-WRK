class ArtworkChangeUserIdToArtistId < ActiveRecord::Migration[5.1]
  def change
    rename_column :artworks, :user_id, :artist_id
  end
end
