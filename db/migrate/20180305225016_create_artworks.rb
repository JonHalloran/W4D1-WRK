class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title, presence: true
      t.string :image_url, presence: true
      t.timestamps
    end
  end
end
