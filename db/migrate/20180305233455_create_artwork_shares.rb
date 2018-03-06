class CreateArtworkShares < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_shares do |t|
      t.integer :viewer_id, presence: true
      t.integer :artwork_id, presence: true
      t.index :viewer_id
      t.index :artwork_id
      t.index [:viewer_id, :artwork_id], unique: true
      t.timestamps
    end
  end
end
