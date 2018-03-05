class AddArtworkUserIdAsForeignKey < ActiveRecord::Migration[5.1]
  def change
  end
  add_foreign_key :artworks, :users
end
