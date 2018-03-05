class AddForeignKeyAuthorIdToArtwork < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :artworks, :users, column: :id
  end
end
