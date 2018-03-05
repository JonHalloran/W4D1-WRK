class RemovePrematureForeignKey < ActiveRecord::Migration[5.1]
  def change
  end
  remove_foreign_key "artworks", "users"
end
